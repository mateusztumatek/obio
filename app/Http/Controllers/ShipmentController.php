<?php

namespace App\Http\Controllers;

use App\Shop\Shipment;
use Illuminate\Http\Request;

class ShipmentController extends Controller
{
    public function index(Request $request){
        return response()->json(Shipment::all());
    }
}
