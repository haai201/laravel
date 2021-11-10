<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Components\MenuRecusive;
use App\Traits\DeleteModelTrait;
use Illuminate\Support\Facades\Auth;
Use Alert;
use App\Menu;

class MenuController extends Controller
{
    use DeleteModelTrait;
    private $menuRecusive;
    private $menu;
    public function __construct(MenuRecusive $menuRecusive, Menu $menu){
        $this->menuRecusive=$menuRecusive;
        $this->menu=$menu;
        $this->middleware('auth');
    }
    public function index(){
        if (Auth::check()) {
            $menus = $this-> menu ->latest()-> paginate(5);
        
            return view('admin.menus.index', compact('menus'));
        }else{
        }
       
    }
    public function create(){
        $optionSelect= $this->menuRecusive->menuRecusiveAdd();
        return view('admin.menus.add',compact('optionSelect'));
        
    }
    public function store(Request $request){
        $this->menu->create([
        'name'=>$request->name,
        'parent_id'=>$request->parent_id,
        'slug'=>$request->name
        ]);
        Alert::success('Thành Công', 'Bạn đã tạo mới thành công!');
        return redirect()->route('menus.index');
    }
    public function edit($id, Request $request){
        $menuFollowEdit = $this->menu->find($id);
        $optionSelect= $this->menuRecusive->menuRecusiveEdit($menuFollowEdit->parent_id);
        return view('admin.menus.edit',compact('menuFollowEdit' , 'optionSelect'));
    }
    public function update($id , Request $request){
        $this->menu->find($id)->update([
           'name'=>$request->name,
           'parent_id'=>$request->parent_id,
           'slug'=> $request->name
           ]);
           Alert::warning('Thành Công', 'Bạn đã cập nhật thành công!');
       return redirect()->route('menus.index');
   }
   public function delete($id){
    return $this->deleteModelTrait($id, $this->menu);
}
}
