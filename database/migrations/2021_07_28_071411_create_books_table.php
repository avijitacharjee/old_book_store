<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBooksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('books', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('seller_id');
            $table->string('title', 64);
            $table->string('author', 64);
            $table->string('edition', 8)->nullable();
            $table->string('publication', 64)->nullable();
            $table->string('version', 8)->nullable();

            $table->unsignedBigInteger('category_id');
            $table->unsignedBigInteger('sub_category1_id')->nullable();
            $table->unsignedBigInteger('sub_category2_id')->nullable();
            
            $table->string('isbn_no',17)->nullable();
            $table->bigInteger('price');
            $table->string('slug')->unique()->nullable();
            $table->string('short_description')->nullable();
            $table->text('description', 64)->nullable();
            
            $table->unsignedBigInteger('division_id');
            $table->unsignedBigInteger('district_id');
            $table->unsignedBigInteger('upazila_id')->nullable();

            $table->tinyInteger('is_sold')->default(0);
            $table->tinyInteger('status')->default(1);
            $table->string('tags', 64)->nullable();
            $table->timestamps();

            $table->foreign('seller_id')->references('id')->on('users')->onDelete('cascade');
            $table->foreign('category_id')->references('id')->on('categories')->onDelete('cascade');
            $table->foreign('sub_category1_id')->references('id')->on('categories')->onDelete('cascade');
            $table->foreign('sub_category2_id')->references('id')->on('categories')->onDelete('cascade');
            $table->foreign('division_id')->references('id')->on('locations')->onDelete('cascade');
            $table->foreign('district_id')->references('id')->on('locations')->onDelete('cascade');
            $table->foreign('upazila_id')->references('id')->on('locations')->onDelete('cascade');
            
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('books');
    }
}
