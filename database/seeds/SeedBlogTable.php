<?php

use Illuminate\Database\Seeder;

class SeedBlogTable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();
        $images = scandir(storage_path('/app/public/blogs'));
        array_splice($images, 0, 2);
        for($i = 0; $i<50; $i++){
            $data = array();
            $data['user_id'] = \App\User::inRandomOrder()->first()->id;
            $data['title'] = $faker->text(150);
            $data['page_title'] = $data['title'];
            $data['page_description'] = $data['title'];
            $data['url'] = \Illuminate\Support\Str::slug($data['title']);
            $data['content'] = $faker->randomHtml(1);
            $data['images'] = json_encode(['blogs/'.$images[rand(1,count($images)) - 1]]);
            $data['page_title'] = $data['title'];
            \App\Blog::create($data);
        }
    }
}
