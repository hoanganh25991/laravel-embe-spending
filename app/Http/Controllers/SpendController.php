<?php

namespace App\Http\Controllers;

use App\Spend;
use Illuminate\Http\Request;

use App\Http\Requests;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\View;


class SpendController extends Controller
{
    public function index(){
        $spends = Spend::all();
        $view = View::make("spends.index");
        return $view->with(compact("spends"));
    }

    public function add(Request $request){
        $spendArray = $request->get("spend");
        $spend = new Spend($spendArray);
        $user = Auth::user();

        $spend->user_id = $user->id;
        $spend->save();
        return Redirect::to("spends");
    }
    
    public function delete(Request $request){
        $id = $request->get("id");
        $spend = Spend::find($id);
        if($spend){
            $spend->delete();
        }
        return Redirect::to("spends");
    }
    
    public function edit(Request $request){
    }
}
