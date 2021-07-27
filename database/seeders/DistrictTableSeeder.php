<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\District;

class DistrictTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $divisions = [
            ['name' => 'Dhaka', 'status' => 1],
            ['name' => 'Chattogram', 'status' => 1],
            ['name' => 'Sylhet', 'status' => 1],
            ['name' => 'Rajshahi', 'status' => 1],
            ['name' => 'Rangpur', 'status' => 1],
            ['name' => 'Khulna', 'status' => 1],
            ['name' => 'Barisal', 'status' => 1],
            ['name' => 'Mymensingh', 'status' => 1],
            ['name' => 'reserved1', 'status' => 0],
            ['name' => 'reserved2', 'status' => 0],
               
        ];

        $districts = [
            // District of Dhaka Division
            ['name' => 'Dhaka', 'parent_id' => '1'], //11
            ['name' => 'Gazipur', 'parent_id' => '1'], //12
            ['name' => 'Kishorganj', 'parent_id' => '1'], //13
            ['name' => 'Manikganj', 'parent_id' => '1'], //14
            ['name' => 'Munshiganj', 'parent_id' => '1'], //15
            ['name' => 'Narayanganj', 'parent_id' => '1'], //16
            ['name' => 'Narsingdi', 'parent_id' => '1'], //17
            ['name' => 'Tangail', 'parent_id' => '1'], //18
            ['name' => 'Faridpur', 'parent_id' => '1'], //19
            ['name' => 'Gopalganj', 'parent_id' => '1'], //20
            ['name' => 'Madaripur', 'parent_id' => '1'], //21
            ['name' => 'Rajbari', 'parent_id' => '1'], //22
            ['name' => 'Shariatpur', 'parent_id' => '1'], //23
            // District of Chattogram Division
            ['name' => 'Chattogram', 'parent_id' => '2'], //24
            ['name' => 'Brahmanbaria', 'parent_id' => '2'], //25
            ['name' => 'Comilla', 'parent_id' => '2'], //26
            ['name' => 'Chandpur', 'parent_id' => '2'], //27
            ['name' => 'Lakshmipur', 'parent_id' => '2'], //28
            ['name' => 'Noakhali', 'parent_id' => '2'], //29
            ['name' => 'Feni', 'parent_id' => '2'], //30
            ['name' => 'Khagrachari', 'parent_id' => '2'], //31
            ['name' => 'Rangamati', 'parent_id' => '2'], //32
            ['name' => 'Bandarban', 'parent_id' => '2'], //33
            ['name' => 'Cox\'s Bazar', 'parent_id' => '2'], //34
            // District of Sylhet Division
            ['name' => 'Sylhet', 'parent_id' => '3'], //35
            ['name' => 'Habiganj', 'parent_id' => '3'], //36
            ['name' => 'Moulvibazar', 'parent_id' => '3'], //37
            ['name' => 'Sunamganj', 'parent_id' => '3'], //38
            // District of Rajshahi Division
            ['name' => 'Rajshahi', 'parent_id' => '4'], //39
            ['name' => 'Natore', 'parent_id' => '4'], //40
            ['name' => 'Pabna', 'parent_id' => '4'], //41
            ['name' => 'Bogura', 'parent_id' => '4'], //42
            ['name' => 'Chapainawabganj', 'parent_id' => '4'], //43
            ['name' => 'Joypurhat', 'parent_id' => '4'], //44
            ['name' => 'Naogaon', 'parent_id' => '4'], //45
            ['name' => 'Sirajganj', 'parent_id' => '4'], //46
            // District of Rangpur Division
            ['name' => 'Rangpur', 'parent_id' => '5'], //47
            ['name' => 'Dinajpur', 'parent_id' => '5'], //48
            ['name' => 'Kurigram', 'parent_id' => '5'], //49
            ['name' => 'Gaibandha', 'parent_id' => '5'], //50
            ['name' => 'Lalmonirhat', 'parent_id' => '5'], //51
            ['name' => 'Nilphamari', 'parent_id' => '5'], //52
            ['name' => 'Panchagarh', 'parent_id' => '5'], //53
            ['name' => 'Thakurganj', 'parent_id' => '5'], //54
            // District of Khulna Division
            ['name' => 'Khulna', 'parent_id' => '6'], //55
            ['name' => 'Bagerhat', 'parent_id' => '6'], //56
            ['name' => 'Chuadanga', 'parent_id' => '6'], //57
            ['name' => 'Jashore', 'parent_id' => '6'], //58
            ['name' => 'Jhenaidah', 'parent_id' => '6'], //59
            ['name' => 'Kushtia', 'parent_id' => '6'], //60
            ['name' => 'Magura', 'parent_id' => '6'], //61
            ['name' => 'Meherpur', 'parent_id' => '6'], //62
            ['name' => 'Narail', 'parent_id' => '6'], //63
            ['name' => 'Sathkhira', 'parent_id' => '6'], //64
            // District of Barisal Division
            ['name' => 'Barisal', 'parent_id' => '7'], //66
            ['name' => 'Barguna', 'parent_id' => '7'], //67
            ['name' => 'Bhola', 'parent_id' => '7'], //68
            ['name' => 'Jhalokati', 'parent_id' => '7'], //69
            ['name' => 'Patuakhali', 'parent_id' => '7'], //70
            ['name' => 'Pirojpur', 'parent_id' => '7'], //71
            // District of Mymengsingh Division
            ['name' => 'Mymensingh', 'parent_id' => '8'], //72
            ['name' => 'Netrokona', 'parent_id' => '8'], //73
            ['name' => 'Jamalpur', 'parent_id' => '8'], //74
            ['name' => 'Sherpur', 'parent_id' => '8'], //75
               
        ];

        // Division seeder
        foreach ($divisions as $division) {
            District::create(array(
                'name' => $division['name'],
                'status' => $division['status'],
            ));
        }

        // District seeder
        foreach ($districts as $district) {
            District::create(array(
                'name' => $district['name'],
                'parent_id' => $district['parent_id'],
            ));
        }
    }
}
