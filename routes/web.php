<?php
use App\Doctor;
use App\Post;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});



// Student login

Route::get('/login', 'StudentLoginController@login');
Route::post('/checklogin', 'StudentLoginController@checklogin');
Route::get('/main/successlogin', 'StudentLoginController@successlogin');
Route::get('/logout', 'StudentLoginController@logout');

// Doctor login

Route::post('/checklogin', 'DoctorLoginController@checklogin');
Route::get('/logout', 'DoctorLoginController@logout');
