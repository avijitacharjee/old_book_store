<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(AdminTableSeeder::class);
        $this->call(DistrictTableSeeder::class);
        $this->call(DistrictTableSeederForUpazila::class);
        $this->call(UserTableSeeder::class);
        $this->call(BookTableSeeder::class);
        $this->call(BookImageTableSeeder::class);
    }
}
