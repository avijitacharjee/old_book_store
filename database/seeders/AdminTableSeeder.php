<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Admin;

class AdminTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // factory(User::class, 100)->create();
        Admin::create(array(
            'name' => 'Admin',
            'email' => 'admin@mail.com',
            'phone' => '01861932523',
            'role' => 1,
            'status' => 1,
            'password' => bcrypt('password'),
            'created_at' => now(),
            'updated_at' => now(),
        ));
    }
}
