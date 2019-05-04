<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Student;
use Validator;
use Auth;
use App\Http\Resources\Student as StudentResource;

class StudentLoginController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // Get Students

        $students = Student::paginate(10); 
        return StudentResource::collection($students);
    }



    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $student = new Student;
        $student->firstname = $request->input('firstname');
        $student->lastname = $request->input('lastname');
        $student->username = $request->input('username');
        $student->card_id = $request->input('card_id');
        $student->e_mail = $request->input('e_mail');
        $student->password = bcrypt($request->input('password'));
        $student->year_id = $request->input('year_id');
        $student->course_id = $request->input('course_id');

        $student->save();






        // $student = $request->isMethod('put') ? Student::findOrFail($request->id) : new Student;

        // $id = $request->input('id');
        // $fullname = $request->input('fullname');
        // $student_id = $request->input('student_id');
        // $e_mail = $request->input('e_mail');
        // $password = $request->input('password');
        // $year = $request->input('year');
        // $course_id = $request->input('course_id');

        // if($student->save()){
        //     return new StudentResource($student);
        // }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $student = Student::findOrFail($id);
        return new StudentResource($student);
    }



    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $student = Student::findOrFail($id);
        if($student->delete()){
        return new StudentResource($student);
    }
}

// Student Login

function loginstudent()
        {
             return view('login');
        }


function checkloginstudent(Request $request)
        {

        $this->validate($request , [
            'email' => 'required|email',
            'password' => 'required|alphaNum|min:3'

        ]);

        $user_data = array(
            'email'  => $request->get('email'),
            'password' => $request->get('password')
           );

        if(Auth::attempt($user_data))
            {
                
            return'Successlogin Student';
           //  return redirect('/main/successlogin');
            // }
            // else
            // {
            //   return back()->with('error', 'Wrong Login Details');
            // }
        }

    }



function successlogin()
    {
       
        return redirect()->away('https://www.google.com');

    }

function logout()
    {
     Auth::logout();
    return redirect('login');
    }

}
