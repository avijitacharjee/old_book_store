<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('categories', function (Blueprint $table) {
            $table->id();
            $table->string('title', 32);
            $table->unsignedBigInteger('parent_id')->nullable();
            $table->tinyInteger('is_featured')->default(0);
            $table->tinyInteger('status')->default(1);
            $table->string('slug')->unique()->nullable();
            $table->string('image_path', 128)->nullable();
            $table->timestamps();
            $table->foreign('parent_id')->references('id')->on('categories')->onDelete('cascade');
        });
    } 

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('categories');
    }
}
