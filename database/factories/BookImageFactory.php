<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\BookImage;

class BookImageFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = BookImage::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'book_id' => $this->faker->numberBetween(1, 50),
            'seller_id' => null,
            'title' => $this->faker->name,
            'path' => $this->faker->imageUrl(),
        ];
    }
}
