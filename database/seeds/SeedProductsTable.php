<?php

use Illuminate\Database\Seeder;

class SeedProductsTable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        /*'desc', 'name', 'images', 'main_image', 'orders_count','views_count', 'data', 'external_id', 'short_desc', 'url', 'page_title', 'page_description', 'price', 'price_sellout', 'active', 'is_new', 'attachments', 'stock', 'sku', 'country', 'sku_parrent', 'weight', 'in_package', 'baselinker_id', 'keywords', 'category_id', 'formats', 'is_printable'*/

        $faker = \Faker\Factory::create();
        $images = scandir(storage_path('/app/public/products'));
        $formats = collect(['.pdf', 'image/*', '.csv', '.cdr']);
        array_splice($images, 0, 2);
        $images = array_map(function ($item){
            return 'products/'.$item;
        }, $images);
        $images = collect($images);
        for ($i = 0; $i<200; $i++){
            $attributes = \App\Shop\Attribute::inRandomOrder()->take(3)->get();
            $attributes = \App\Shop\Attribute::inRandomOrder()->take(3)->get();
            $data = [];
            $data['name'] = $faker->name;
            $data['desc'] = $faker->realText(300);
            $data['images'] = $images->random(3)->toJson();
            $data['main_image'] = $images->random(1)[0];
            $data['short_desc'] = $data['desc'];
            $data['url'] = \Illuminate\Support\Str::slug($data['name']);
            $data['page_title'] = $data['name'];
            $data['page_description'] = $data['name'];
            $data['price'] = floatval(mt_rand (1*10, 200*10) / 10);
            $data['price_sellout'] = (rand(0,4) == 2)? $data['price'] = $data['price'] - $data['price'] / 3 : null;
            $data['active'] = true;
            $data['is_new'] = (rand(0,3) == 2)? true : false;
            $data['stock'] = 1;
            $data['formats'] = $formats->random(2)->toJson();
            $data['is_printable'] = rand(0,1 == 1);
            $product = \App\Shop\Product::create($data);
            $categories = \App\Shop\Category::inRandomOrder()->take(5)->get();
            $categories = $categories->map(function ($item){
                return $item->id;
            });
            $product->categories()->sync($categories);
            foreach ($attributes as $a){
                if($a->type == 'bool'){
                    $product->attributes()->create([
                        'attribute_id' => $a->id,
                        'value' => 1,
                        'default' => rand(0,1) == 1,
                        'additional_price' => (rand(0,1) == 1)? floatval(mt_rand (1*10, 10*10) / 10) : null
                    ]);
                }
                if($a->type == 'text'){
                    for($y = 0; $y < 3; $y++){
                        $product->attributes()->create([
                            'attribute_id' => $a->id,
                            'value' => $faker->word,
                            'default' => ($y == 0)? true : false,
                            'additional_price' => (rand(0,1) == 1)? floatval(mt_rand (1*10, 10*10) / 10) : null
                        ]);
                    }
                }
                if($a->type == 'color'){
                    for($y = 0; $y < 3; $y++){
                        $color = \App\Relations\ColorGroup::inRandomOrder()->first();
                        $product->attributes()->create([
                            'attribute_id' => $a->id,
                            'value' => $color->id,
                            'default' => ($y == 0)? true : false,
                            'additional_price' => (rand(0,1) == 1)? floatval(mt_rand (1*10, 10*10) / 10) : null
                        ]);
                    }
                }
            }
        }
    }
}
