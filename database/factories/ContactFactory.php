<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Contact;

class ContactFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Contact::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->name,
            'email' => $this->faker->unique()->safeEmail(),
            'phone' => '0'.$this->faker->unique()->numberBetween(1300000000, 1900000000),
            'subject' => $this->faker->sentence,
            'message' => $this->faker->text,
            'is_read' => $this->faker->randomElements([0, 0, 1])[0],
        ];
    }
}
