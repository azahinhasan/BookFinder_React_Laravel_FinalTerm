<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class HomeZController extends Controller
{

    public function bookSearcWithResults(Request $data){

        $temp = DB::table('books')
       // ->where('Name', $data->search)
       ->where('Name', 'like', '%'.$data->search.'%')
        ->get();
        
        return $temp;

    }

    public function login(){

            return view('Home.loginFrom')->with('msg', '');

    }

    public function loginPost(Request $data){

       // return $data->Password;
        $temp = DB::table('users')
            ->where('Email',$data->Email)
            ->where('Password',$data->Password)
            ->first();

        if($temp==null){

            //return view('Home.loginFrom')->with('msg', 'Invalid Data!');
            return response()->json(['Email' => '','ID' => '','Rank'=>'','msg' => 'Invalid Data!']);

        }

        $temp2 = DB::table('users')
            ->where('Email',$data->Email)
            ->where('BanStatus','true')
            // ->orwhere('BanStatus','')
            ->get();

        if(count($temp2)>0){

            //return view('Home.loginFrom')->with('msg', 'Account Is Disabled!');
            return response()->json(['Email' => '','ID' => '','Rank'=>'','msg' => 'Account Is Disabled!']);

        }



        return response()->json(['Email'=>$temp->Email,'ID'=>$temp->ID,'Rank'=>$temp->Rank,'msg' => 'OK']);

    }

    public function logOut(Request $req){

        $req->session()->flush();

        return redirect('/login');
        

    }

    //contactusPost

    public function contactus(Request $req){
        return view('Home.contactUs')->with('msg','');
    }

    public function contactusPost(Request $req){

        DB::table('contact_us')->insert(
            ['Name' => $req->Name,
            'Email' => $req->Email,
            'Msg'=>$req->Msg]);

            return view('Home.contactUs')->with('msg','Your Massage Send!');
    }

    

}
