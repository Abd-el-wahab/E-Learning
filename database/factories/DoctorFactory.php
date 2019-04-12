<?php

use Faker\Generator as Faker;

$factory->define(App\Doctor::class, function (Faker $faker) {
    return [
        'firstname' => $faker->name,
        'lastname' => $faker->name,
        'username' => $faker->name,
        'card_id' => $faker->numberBetween(1,10),
        'e_mail' => $faker->unique()->safeEmail,
        'password' => bcrypt($faker->password),
        'year_id' => $faker->name,
        'course_id' => $faker->numberBetween(1,10),
    ];
});
