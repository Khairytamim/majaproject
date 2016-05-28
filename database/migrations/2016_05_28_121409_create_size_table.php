<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSizeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('size', function (Blueprint $table) {
            $table->increments('id_size');
            $table->integer('product_id')->unsigned();
            $table->foreign('product_id')->references('id_product')->on('products')->onDelete('cascade');

            $table->string('size');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('size');
    }
}
