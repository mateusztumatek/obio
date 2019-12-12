<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('user_id')->nullable();
            $table->integer('address_id');
            $table->string('payment_type');
            $table->integer('shipping_id');
            $table->text('notes')->nullable();
            $table->string('status')->default('new');
            $table->string('hash');
            $table->float('amount');
            $table->float('shipment_amount');
            $table->string('payment_link', 512)->nullable();
            $table->boolean('paid')->default(false);
            $table->string('tracking')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('orders');
    }
}
