<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Location;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::factory()->count(50)->create();

        // update district_id
        $users = User::all();
        foreach($users as $user){
            $district = Location::select('id')->inRandomOrder()->where('parent_id', $user->division_id)->first();
            // error_log($district['id']);
            $user->update([
                'district_id' => (int)$district['id'],
            ]);
        }
    }
}
