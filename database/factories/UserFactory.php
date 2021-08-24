<?php

namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\Location;
class UserFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = User::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $division_id = Location::select('id')->inRandomOrder()->where('parent_id', null)->where('status', 1)->first();
        // $district_id = Location::select('id')->inRandomOrder()->where('parent_id', $division_id)->first();
        return [
            'name' => $this->faker->name(),
            'phone' => '0'.$this->faker->unique()->numberBetween(1300000000, 1900000000),
            'email' => $this->faker->unique()->safeEmail(),
            'email_verified_at' => now(),
            'institute' => 'Premier University',
            'gender' => $this->faker->randomElements(['Male', 'Female', 'Male',])[0],
            'date_of_birth' => $this->faker->dateTimeBetween('1960-01-01', '2006-12-31')->format('Y/m/d'),
            'division_id' => $division_id,
            'district_id' => 2, // it will be updated automatically at later by seeder file.
            // 'upazila_id' => null,
            'status' => 1,
            'image_path' => $this->faker->imageUrl(),
            'password' => bcrypt('password'),
            'remember_token' => Str::random(10),
        ];
    }

    /**
     * Indicate that the model's email address should be unverified.
     *
     * @return \Illuminate\Database\Eloquent\Factories\Factory
     */
    public function unverified()
    {
        return $this->state(function (array $attributes) {
            return [
                'email_verified_at' => null,
            ];
        });
    }

    
}
// function divisionID(){
//     return District::select('id')->inRandomOrder()->where('parent_id', null)->first();
// }
// function districtID($division_id){

//     $district_id = District::select('id')->inRandomOrder()->where('parent_id', $division_id)->first();
//     return $district_id;
// }
