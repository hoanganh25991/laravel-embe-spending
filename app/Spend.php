<?php

namespace App;

class Spend extends BaseModel
{
    protected $table = "spends";
    protected $fillable = ["money", "description"];
}
