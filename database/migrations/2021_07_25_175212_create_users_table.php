<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name',32);
            $table->string('phone', 16)->unique();
            $table->string('email',64)->unique();
            $table->string('institute');
            $table->unsignedBigInteger('division_id');
            $table->unsignedBigInteger('district_id');
            $table->unsignedBigInteger('upazila_id')->nullable();
            $table->tinyInteger('status')->default(0);
            $table->string('password');
            $table->timestamp('email_verified_at')->nullable();
            $table->string('email_verification_token', 128)->nullable();
            $table->string('image_path', 128)->nullable();
            $table->rememberToken();
            $table->timestamps();

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
        Schema::dropIfExists('users');
    }
}
