<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\SoftDeletes;

class User extends Authenticatable
{
    use Notifiable, SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
    public function roles(){
        return $this->belongsToMany(Role::class, table:'role_user',foreignPivotKey:'user_id',relatedPivotKey:'role_id');
    }
    public function checkPermissionAccess($permissionsCheck){
        //user login vào hệ thống có quyền add, sửa danh mục vào xem menu
        //B1 Lấy được các quyền của User đang login vào hệ thống
        $roles=auth()->user()->roles;
        foreach ($roles as $role){
            $permissions = $role->permissions;
            if($permissions->contains('key_code',$permissionsCheck)){
                return true;
            }
        }
        return false;

        //B2 So sánh giá trị đưa vào của route hiện tại xem có tồn tại trong các quyền có lấy được hay ko 
    }
}
