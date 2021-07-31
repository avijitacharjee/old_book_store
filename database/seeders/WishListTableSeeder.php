<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\WishList;

class WishListTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        WishList::factory()->count(20)->create();
    }
}
