<?php
namespace App\Services;
use Illuminate\Database\Eloquent\Model;

class PayuModel extends Model {
    protected $fillable = ['local_order_id', 'payu_order_id', 'currency', 'totalAmount', 'history', 'status'];
    protected $table = 'payu_payments';
}
