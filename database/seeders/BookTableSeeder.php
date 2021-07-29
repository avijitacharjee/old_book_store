<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Book;
use App\Models\Location;

class BookTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Book::factory()->count(50)->create();

        // update district_id
        $books = Book::all();
        foreach($books as $book){
            $district = Location::select('id')->inRandomOrder()->where('parent_id', $book->division_id)->first();
            $book->update([
                'district_id' => (int)$district['id'],
            ]);
        }
    }
}
