<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product', function (Blueprint $table) {
            $table->increments('id_product');
            $table->string('product_name');
            $table->string('brand');
            $table->text('descriptions');
            $table->integer('category_id')->unsigned()->index();
            $table->foreign('category_id')->references('id_category')->on('category')->onDelete('cascade');
            $table->string('gender');
            $table->integer('price');
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
        Schema::drop('product');
    }
}
