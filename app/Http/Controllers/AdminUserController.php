<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Role;
Use Alert;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests\UserAddRequest;
use Illuminate\Support\Facades\Auth;
use App\Traits\DeleteModelTrait;
use DB;

class AdminUserController extends Controller
{
    private $user;
    private $role;
    use DeleteModelTrait;
    public function __construct(User $user, Role $role){
        $this->user = $user;
        $this->role = $role;
        $this->middleware('auth');

    }
    public function index(){
        if (Auth::check()) {
            $users=$this->user->latest()->paginate(10);
            if (session('success_message')) {
                Alert::success('Thành Công', session('success_message'));
            }
            return view('admin.user.index',compact('users'))->withSuccessMessage('Bạn đã tạo mới thành công');
        }
       
    }
    public function create(){
        $roles=$this->role->all();
        return view('admin.user.add',compact('roles'));
    }
    public function store(UserAddRequest $request){
        try {
            DB::beginTransaction();
        $user=$this->user->create([
            'name' => $request->name,
            'email'=> $request->email,
            'password' => Hash::make($request->password)
        ]);
        
        $user->roles()->attach($request->role_id);
        DB::commit();
        return redirect()->route('users.index');
    }catch (\Exceptions $exception) {
        DB::rollBack();
        Log::error(message: 'Messeage:' . $exception->getMessage() . '----Line :' . $exception->getLine());
    }
}

    public function edit($id){
        $roles=$this->role->all();
        $user=$this->user->find($id);
        $rolesOfUser=$user->roles;
        return view('admin.user.edit', compact('roles','user','rolesOfUser'));
    }
    public function update(Request $request, $id){
        try {
            DB::beginTransaction();
        $this->user->find($id)->update([
            'name' => $request->name,
            'email'=> $request->email,
            'password' => Hash::make($request->password)
        ]);
        $user= $this->user->find($id);
        $user->roles()->sync($request->role_id);
        DB::commit();
        return redirect()->route('users.index')->withSuccessMessage('Bạn đã cập nhật thành công');
    }catch (\Exceptions $exception) {
        DB::rollBack();
        Log::error(message: 'Messeage:' . $exception->getMessage() . '----Line :' . $exception->getLine());
    }
    }
    public function delete($id){
        return $this->deleteModelTrait($id, $this->user);
}
}
