<?php

namespace Database\Factories;

use App\Models\Admin;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use Hash;

class AdminFactory extends Factory
{
    protected $model = Admin::class;
    public function definition()
    {
        return [
            //'name' => $this->faker->name(),
            //'email' => $this->faker->unique()->safeEmail(),
            'role_id' => 1,
            'name' => 'Mr. Admin',
            'username' => 'admin',
            'email' => 'admin@gmail.com',
            'email_verified_at' => now(),
            'password' => Hash::make('password'), // password
            'remember_token' => Str::random(10),
        ];
    }
}
