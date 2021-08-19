<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Permission;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\PermissionAddRequest;
Use Alert;
use DB;

class AdminPermissionController extends Controller
{
    public function create(){
        if (Auth::check()) {
            return view('admin.permission.add');
        }
     }
     public function store(PermissionAddRequest $request){
        try {
            DB::beginTransaction();
        $permission =Permission::create([
             'name' => $request->name,
             'display_name'=>$request->name,
             'parent_id'=>0
         ]);
         foreach($request->module_children as $value){
            Permission::create([
                'name' => $value,
                'display_name'=>$value,
                'parent_id'=>$permission->id,
                'key_code'=>$request->name . '_'. $value
            ]);
         }
         DB::commit();
         return redirect()->route('permission.create');
        } catch (\Exceptions $exception) {
            DB::rollBack();
            Log::error(message: 'Messeage:' . $exception->getMessage() . '----Line :' . $exception->getLine());
        }
     }
     
}
