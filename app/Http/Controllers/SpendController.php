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
    protected $user;

    public function __construct(){
        $this->user = Auth::user();
    }

    public function index(){
        $user = Auth::user();
        $spends = Spend::where("user_id", $user->id)
            ->orderBy("updated_at", "desc")
            ->paginate(5);
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

    public function summary(Request $request){
        $user = Auth::user();

        $type = $request->get("type");

        $byDayRecords = Spend::thisUser($user->id)
            ->thisMonth()
            ->selectRaw('DAY(created_at) as day, sum(money) as spends')
            ->groupBy("day")
            ->pluck("spends", "day");

        $byMonthRecords = Spend::thisUser($user->id)
            ->lastTwoMonths()
            ->selectRaw('MONTH(created_at) as month, sum(money) as spends')
            ->groupBy("month")
            ->pluck("spends", "month");

        if($type == "day"){
            return $byDayRecords;
        }

        if($type == "month"){
            return $byMonthRecords;
        }

        //default when $type == null
        return $byDayRecords;
    }
}
