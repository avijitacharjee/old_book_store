<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\District;

class DistrictTableSeederForUpazila extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $upazilas = [
            ['name' => 'Patiya', 'parent_id' => 24],
               
        ];
        // Upazila seeder
        foreach ($upazilas as $upazila) {
            District::create(array(
                'name' => $upazila['name'],
                'parent_id' => $upazila['parent_id'],
            ));
        }
    }
}
