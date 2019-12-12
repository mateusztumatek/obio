<?php

use Illuminate\Database\Seeder;

class AddDataToProducts extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $products = \App\Product::all();
        foreach ($products as $product){
            $temp = '{ 
   "tool":"rect",
   "tools":[ 
      { 
         "x":72,
         "edited":true,
         "y":134.6225165562914,
         "width":300,
         "height":300,
         "fill":"rgba(255,0,0,0.3)",
         "name":"rect",
         "stroke":"red",
         "draggable":true,
         "rotation":0,
         "scaleX":1,
         "scaleY":0.6225165562913907,
         "offsetX":0,
         "offsetY":0,
         "skewX":0,
         "skewY":0
      }
   ],
   "configKonva":{ 
      "width":600,
      "height":600
   },
   "configImage":{ 
      "width":450,
      "height":600,
      "src":"http:\/\/127.0.0.1:8001\/storage\/products\/examples\/xd.png?",
      "image":[ 

      ],
      "image_src":"products\/examples\/xd.png"
   }
}';
            $temp = str_replace('products\/examples\/xd.png', $product->main_image, $temp);
            $product->data = $temp;
            $product->update();
        }
    }
}
