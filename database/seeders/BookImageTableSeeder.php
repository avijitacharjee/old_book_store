<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\BookImage;

class BookImageTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        BookImage::factory()->count(150)->create();
    }
}
