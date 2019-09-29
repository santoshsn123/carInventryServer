<?php

namespace App\Http\Controllers;

use App\Inventry;
use Illuminate\Http\Request;

class InventryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
        return Inventry::orderBy('inventries.id', 'desc')
        ->leftJoin('models', 'inventries.manufacturer', '=', 'models.id')
        ->get(['inventries.id',"inventries.*",'models.modelTitle']);
        // ->first(['inventries.id',"inventries.*"]);
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
        
        $inventry = new Inventry();
        $inventry->manufacturer = $request->manufacturer;
        $inventry->modelName = $request->modelName;
        $inventry->color = $request->color;
        $inventry->year = $request->year;
        $inventry->regNumber = $request->registrationNo;
        $inventry->note = $request->note;
       

        $ext = explode(".",$_FILES['image1']['name'])[count(explode(".",$_FILES['image1']['name']))-1];
        $ext2 = explode(".",$_FILES['image2']['name'])[count(explode(".",$_FILES['image1']['name']))-1];
        $name1="image1_".time()."_.". $ext;
        $name2="image2_".time()."_.". $ext2;
        copy($_FILES['image1']['tmp_name'],public_path('/images/').$name1) OR DIE("Unable to upload image");
        copy($_FILES['image2']['tmp_name'],public_path('/images/').$name2) OR DIE("Unable to upload image");

        $inventry->image1 = $name1;
        $inventry->image2 =$name2;

         $inventry->save();
         return $inventry;
       
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Inventry  $inventry
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request)
    {
        //
        return Inventry::orderBy('models.id', 'desc')->where('inventries.id','=',$request->id)
        ->leftJoin('models', 'models.id', '=', 'inventries.manufacturer')
        ->first(['inventries.id',"inventries.*",'models.modelTitle']);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Inventry  $inventry
     * @return \Illuminate\Http\Response
     */
    public function edit(Inventry $inventry)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Inventry  $inventry
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Inventry $inventry)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Inventry  $inventry
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        //
        return  Inventry::where('id', '=', $request->id)->delete();
    }
}
