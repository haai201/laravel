<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;




class Role extends Model
{
    use SoftDeletes;
    protected $guarded=[];
    public function permissions(){
        return $this->belongsToMany(Permission::class,'permission_role',foreignPivotKey:'role_id', relatedPivotKey:'permission_id');
    }
}
