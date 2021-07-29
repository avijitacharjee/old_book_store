<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Book;
use App\Models\Category;
use App\Models\Location;

class BookFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Book::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        // $category_id = Category::select('id')->inRandomOrder()->first();
        $category_id = Category::get()->random()->id;
        $division_id = Location::where('parent_id', null)->where('status', 1)->get()->random()->id;
        return [
            'seller_id' => $this->faker->numberBetween(5, 25),
            'title' => $this->faker->name,
            'author' => $this->faker->name,
            'edition' => $this->faker->randomElements(['3rd', '4th', '5th', '6th'])[0],
            'publication' => $this->faker->name,
            'version' => $this->faker->randomElements(['Bangla', 'English', 'English', 'English',])[0],
            'category_id' => $category_id,
            'isbn_no' => null,
            'price' => $this->faker->numberBetween(100, 500),
            'short_description' => null,
            'description' => $this->faker->text,
            'is_sold' => $this->faker->randomElements([0, 0, 0, 1])[0],
            'division_id' => $division_id,
            'district_id' => 11, // it will be update in seeder file by division id
            'upazila_id' => null,
            'status' => 1,
        ];
    }
}
