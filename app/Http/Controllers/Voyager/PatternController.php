<?php

namespace App\Http\Controllers\Voyager;

use App\Helpers\Helper;
use App\Http\Controllers\Voyager\VoyagerBaseController;
use App\Product;
use Illuminate\Http\Request;
use PHPUnit\TextUI\Help;

class PatternController extends VoyagerBaseController
{
    public function store(Request $request)
    {
        $request->validate([
            'data' => ['required', function($field, $data, $fail){
                if($data == '[]') $fail('Musisz wybrać ułożenie elementów');
            }]
        ]);
        return parent::store($request); // TODO: Change the autogenerated stub
    }
    public function update(Request $request, $id)
    {
        return parent::update($request, $id); // TODO: Change the autogenerated stub
    }

}
