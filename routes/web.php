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

// Route::get('/login', 'StudentLoginController@loginstudent');
// Route::post('/checklogin', 'StudentLoginController@checkloginstudent');
// Route::get('/main/successlogin', 'StudentLoginController@successlogin');
// Route::get('/logout', 'StudentLoginController@logout');

// Doctor login
 
// Route::post('/checklogin', 'DoctorLoginController@checklogin');
// Route::get('/logout', 'DoctorLoginController@logout');

//  Route::get('lecture' , 'LectureController@index');
  Route::post('/fileupload', 'LectureController@store');
//  Route::get('/fileshow/{id}', 'LectureController@show');
//  Route::delete('/lecture/{id}' , 'LectureController@destroy');
//Route::get('/download', 'LectureController@download');
Route::get('/lecture/{id}', 'LectureController@show');
Route::get('/download', 'LectureController@downloadFile');


