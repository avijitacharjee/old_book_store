<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Location;

class LocationTableSeederForUpazila extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $upazilas = [
            ['name' => 'Bayazid', 'parent_id' => 24],
            ['name' => 'Chandgaon', 'parent_id' => 24],
            ['name' => 'Panchlaish', 'parent_id' => 24],
            ['name' => 'Akbarshah', 'parent_id' => 24],
            ['name' => 'Pahartali', 'parent_id' => 24],
            ['name' => 'Khulshi', 'parent_id' => 24],
            ['name' => 'Bakoliya', 'parent_id' => 24],
            ['name' => 'Kotwali', 'parent_id' => 24],
            ['name' => 'Halishahar', 'parent_id' => 24],
            ['name' => 'Double Mooring', 'parent_id' => 24],
            ['name' => 'Bandar', 'parent_id' => 24],
            ['name' => 'Patenga', 'parent_id' => 24],
            ['name' => 'Patiya', 'parent_id' => 24],
            ['name' => 'Hathhazari', 'parent_id' => 24],
            ['name' => 'Anwara', 'parent_id' => 24],
            ['name' => 'BanshKhali', 'parent_id' => 24],
            ['name' => 'BoalKhali', 'parent_id' => 24],
            ['name' => 'Chandanaish', 'parent_id' => 24],
            ['name' => 'Raozan', 'parent_id' => 24],
            ['name' => 'Sitakunda', 'parent_id' => 24],
            ['name' => 'Rangunia', 'parent_id' => 24],
            ['name' => 'Satkania', 'parent_id' => 24],
               
        ];
        // Upazila seeder
        foreach ($upazilas as $upazila) {
            Location::create(array(
                'name' => $upazila['name'],
                'parent_id' => $upazila['parent_id'],
            ));
        }
    }
}
