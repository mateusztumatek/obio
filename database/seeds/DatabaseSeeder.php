<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();

        $attributes = ['Rozmiar' => [['xs', 's', 'm', 'l', 'xl'], ['s', 'm', 'l']], 'Marka' => ['Tee Jays', 'P Sock', 'Puma', 'Adidas', 'Nike'], 'Materiał' => ['Bawełna 100%', 'Bawełna 80% / Poliester 20%', 'Poliester 100%'], 'Z daszkiem' => ['1', '0'], 'Typ szycia' => ['5 Panelowa', '6 Panelowa', 'Całkowita'], 'Kolor' => ['Zielony', 'Czarny', 'Czerwony', 'Niebieski', 'Różowy', 'Żółty', 'Pomarańczowy']];
        for($i = 0; $i<100; $i++){
            $images_dir = scandir(storage_path('app/public/products/examples'));
            array_splice($images_dir, 0, 2);
            $main_image = 'products/examples/'.$images_dir[rand(0, count($images_dir) -1)];
            $name = $faker->name. ' '. $faker->colorName;
            $url = \App\Helpers\Helper::slugify($name);
            $price = mt_rand (10*10, 80*10) / 10;
            $category = \App\Category::inRandomOrder()->first();
            (rand(0, 10) > 8)? $price_sellout = $price - 2 : $price_sellout = null;
            $product = \App\Product::create([
                'desc' => $faker->randomHtml(2),
                'name' => $name,
                'images' => null,
                'main_image' => $main_image,
                'short_desc' => $faker->text(120),
                'url' => $url,
                'page_title' => $name,
                'page_description' => $name.' '.$faker->text(70),
                'price' => $price,
                'price_sellout' => $price_sellout,
                'active' => true,
                'is_new' => rand(0,1),
                'stock' => 400,
                'country' => 'PL',
                'weight' => 0.2,
                'category_id' => $category->id
            ]);
            foreach ($attributes as $key => $a){
                $attribute = \App\Attribute::where('name', $key)->first();
                if($attribute){
                    if($attribute->name != 'Rozmiar'){
                        \App\ProductAttribute::create([
                            'product_id' => $product->id,
                            'attribute_id' => $attribute->id,
                            'value' => $a[rand(0, count($a) - 1)],
                        ]);
                    }else{
                        foreach ($a[rand(0, count($a) - 1)] as $value){
                            \App\ProductAttribute::create([
                                'product_id' => $product->id,
                                'attribute_id' => $attribute->id,
                                'value' => $value
                            ]);
                        }
                    }
                }
            }
        }
    }
}
