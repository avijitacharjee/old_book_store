<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Category;
use Illuminate\Support\Str;

class CategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $categories = [
            ['title' => 'University Level',],
            ['title' => 'College Level',],
            ['title' => 'School Level',],
            ['title' => 'Art & Architecture',],
            ['title' => 'Biography',],
            ['title' => 'Business & Economics',],
            ['title' => 'Dictionary',],
            ['title' => 'Health & Fitness',],
            ['title' => 'History',],
            ['title' => 'Home & Garden',],
            ['title' => 'Journal',],
            ['title' => 'Mathematics',],
            ['title' => 'Philosophy',],
            ['title' => 'Religion',],
            ['title' => 'Science & Engineering',],
            ['title' => 'Science fiction',],
            ['title' => 'Technology',],
            ['title' => 'Travel',],
               
        ];

        // Division seeder
        foreach ($categories as $category) {
            Category::create(array(
                'title' => $category['title'],
                'slug' => Str::slug($category['title'], '-'),
            ));
        }
    }
}
