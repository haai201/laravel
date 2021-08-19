<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Role;
use App\Permission;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\RoleAddRequest;
Use Alert;
use App\Traits\DeleteModelTrait;
use DB;

class AdminRoleController extends Controller
{
    private $role;
    private $permission;
    use DeleteModelTrait;
    public function __construct(Role $role, Permission $permission)
    {
        $this->role = $role;
        $this->permission = $permission;
        $this->middleware('auth');
    }
    public function index()
    {
        if (Auth::check()) {
            $roles=$this->role->latest()->paginate(5);
            if (session('success_message')) {
                Alert::success('Thành Công', session('success_message'));
            }
            return view('admin.role.index', compact('roles'))->withSuccessMessage('Bạn đã tạo mới thành công');
        }
    }
    public function create()
    {
        $permissionsParent= $this->permission->where('parent_id', 0)->get();
        return view('admin.role.add', compact('permissionsParent'));
    }
    public function store(RoleAddRequest $request)
    {
        try {
            DB::beginTransaction();
            $role= $this->role->create([
            'name' => $request->name,
            'display_name'=> $request->display_name
        ]);
            $role->permissions()->attach($request->permission_id);
            DB::commit();
            return redirect()->route('roles.index');
        } catch (\Exceptions $exception) {
            DB::rollBack();
            Log::error(message: 'Messeage:' . $exception->getMessage() . '----Line :' . $exception->getLine());
        }
    }
    public function edit($id){

            $permissionsParent= $this->permission->where('parent_id', 0)->get();
            $role= $this->role->find($id);
            $permissionsChecked= $role->permissions;
            return view('admin.role.edit', compact('permissionsParent', 'role','permissionsChecked'));
    }
    public function update(Request $request,$id){
        try {
            DB::beginTransaction();
            $role= $this->role->find($id);
           $role->update([
            'name' => $request->name,
            'display_name'=> $request->display_name
        ]);
        
            $role->permissions()->sync($request->permission_id);
            DB::commit();
            return redirect()->route('roles.index')->withSuccessMessage('Bạn đã cập nhật thành công');
        } catch (\Exceptions $exception) {
            DB::rollBack();
            Log::error(message: 'Messeage:' . $exception->getMessage() . '----Line :' . $exception->getLine());
        }
    }
    public function delete($id){
        return $this->deleteModelTrait($id, $this->role);
}

}
