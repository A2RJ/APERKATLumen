<?php

namespace Database\Seeders;

use App\Models\UserModel;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        UserModel::create([
            'fullname' => "Ardiansyah Putra",
            'email' => "ardi@gmail.com",
            'password' => Hash::make('ardi'),
            'token' => Hash::make('ardi'),
            'id_struktur' => "1",
            'id_struktur_child1' => "2",
            'id_struktur_child2' => "3",
            'nomor_wa' => "980",
            'bank' => "Bank BNI",
            'no_rek' => "8789789",
        ]);
    }
}
