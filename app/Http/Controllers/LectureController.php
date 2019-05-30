<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\lecture;
use App\Http\Resources\Lecture as LectureResource;
use DB;

class LectureController extends Controller
{


    // public function dropzone(Request $request){
    //     $file = $request->file('file');
    //     File::create([
    //         'title' => $file->getClientOriginalName(),
    //         'subject' =>'Algorthm',
    //         'lecture_no'=>'2',
    //         'select_year'=>'year1',
    //         'file_upload_path' => $file->store('public/storage')
    //     ]);

    // }

    // public function file() {
    //     $file = '../public/lecture/MyCv.docx';
    //     $name = basename($file);
    //     return response()->download($file, $name);
    // }


    //  <a href='lecture/$down->name' download='$down->name'>

    // public function downloadFile()
    // {
    //     $lecture = Lecture::findOrFail($id);

    //     $name = $lecture->name;
    //     $myFile = public_path("lecture/" . $name);
    // 	$headers = ['Content-Type: application/pdf'];
    

    //      return response()->download($myFile, $name, $headers);
        




    // 	// $myFile = public_path("lecture/MyCv.docx");
    // 	// $headers = ['Content-Type: application/pdf'];
    // 	// $newName = 'itsolutionstuff-pdf-file-'.time().'.pdf';


    // 	// return response()->download($myFile, $newName, $headers);
    // }



    // public function download($id){
    //     $dd = Lecture::find($id);
    //     return Lecture::download($dd->name);
    //     // return Storage::download($dd->path, $dd->title);
    // }


    public function downloadlec(){

        $downloads=DB::table('lectures')->get();
    	return view('view',compact('downloads'));

    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $lecture = Lecture::paginate(100); 
        return LectureResource::collection($lecture);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {


        if($file = $request->file('file')){

            $name = $file->getClientOriginalName();
            $subject = $request->input('subject');
            if($file->move('lecture' , $name)){
                $lecture = new Lecture();
                $lecture->name = $name;
                $lecture->subject = $request->input('subject');
                $lecture->save();
                return;
                // return redirect()->route('login');
            };
                return"Somthing Wrong";
        }


        // $title = new Lecture;
        // $title->subject = $request->input('subject');
        // $title->save(); 

        // if($file = $request->file('file')){

        //     $name = $file->getClientOriginalName();
        //     if($file->move('lecture' , $name)){
        //         $lecture = new Lecture();
        //         $lecture->name = $name;
        //         $lecture->save();
        //         return $name;
        //         // return redirect()->route('login');
        //     };
        //         return"Somthing Wrong";
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
        $lecture = Lecture::findOrFail($id);
        return new LectureResource($lecture);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $lecture = Lecture::findOrFail($id);
        if($lecture->delete()){
        return new LectureResource($lecture);
    }
    }



}
