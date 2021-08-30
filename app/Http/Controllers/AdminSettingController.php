<?php

namespace App\Http\Controllers;
use App\Http\Requests\SettingAddRequest;
use App\Traits\DeleteModelTrait;
use Illuminate\Support\Facades\Auth;
Use Alert;
use App\Setting;

use Illuminate\Http\Request;

class AdminSettingController extends Controller
{
    use DeleteModelTrait;
    private $setting;
    public function __construct(Setting $setting){
        $this->setting = $setting;
        $this->middleware('auth');
    }
    public function index(){
        if (Auth::check()) {
            // The user is logged in...
            $settings = $this->setting->latest()->paginate(5);
        
        return view('admin.setting.index',compact('settings'));
        }
        
    }
    public function create(){
        return view('admin.setting.add');
    }
    public function store(SettingAddRequest $request){
        $this->setting->create([
            'config_key' => $request->config_key,
            'config_value' => $request->config_value,
            'type'=>$request->type
        ]);
        Alert::success('Thành Công', 'Bạn đã tạo mới thành công!');
        return redirect()->route('settings.index');
    }
    public function edit($id){
        $setting=$this->setting->find($id);
        return view('admin.setting.edit', compact('setting'));
    }
    public function update(Request $request,$id){
        $this->setting->find($id)->update([
            'config_key' => $request->config_key,
            'config_value'=> $request->config_value
        ]);
        Alert::warning('Thành Công', 'Bạn đã cập nhật thành công!');
        return redirect()->route('settings.index');
    }
    public function delete($id){
       return $this->deleteModelTrait($id, $this->setting);
    }
}
