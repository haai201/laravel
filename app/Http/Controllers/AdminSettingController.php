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
            if (session('success_message')) {
                Alert::success('Thành Công', session('success_message'));
            }
        return view('admin.setting.index',compact('settings'))->withSuccessMessage('Bạn đã tạo mới thành công');
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
        return redirect()->route('settings.index')->withSuccessMessage('Bạn đã tạo mới thành công');
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
        return redirect()->route('settings.index')->withSuccessMessage('Bạn đã cập nhật thành công');
    }
    public function delete($id){
       return $this->deleteModelTrait($id, $this->setting);
    }
}
