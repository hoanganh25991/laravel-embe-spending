<?php

namespace App;

use Carbon\Carbon;

class Spend extends BaseModel
{
    protected $table = "spends";
    protected $fillable = ["money", "description"];


    public function scopeThisYear($query){
        return $query->where("created_at", ">=", Carbon::now()->firstOfYear());
    }
    
    public function scopeThisMonth($query){
        return $query->where("created_at", ">=", Carbon::now()->firstOfMonth());
    }
    
    public function scopeThisUser($query, $userId){
        return $query->where("user_id", $userId);
    }
    
    public function scopeLastTwoMonths($query){
        return $query->where("created_at", ">=", Carbon::now()->firstOfMonth()->subMonth());
    }
}
