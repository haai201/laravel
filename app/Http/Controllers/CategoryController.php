<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Components\Recusive;
use Illuminate\Support\Facades\Auth;
use App\Traits\DeleteModelTrait;
use Alert;
use DB;


class CategoryController extends Controller
{
    use DeleteModelTrait;
    private $category;
    
    public function __construct(Category $category){
        
        $this->category = $category;
        $this->middleware('auth');
    }
    public function create(){
        $htmlOption = $this->getCategory($parentId = '');
        return view('admin.category.add', compact('htmlOption'));

     }

    public function index(){
        if (Auth::check()) {
            // The user is logged in...
            $categories=$this->category->latest()->paginate(5);
            if (session('success_message')) {
                Alert::success('Thành Công', session('success_message'));
            }
        return view('admin.category.index', compact('categories'));
        }
        
    }
    public function store(Request $request){
        try {
            DB::beginTransaction();
        $this->category->create([
        'name'=>$request->name,
        'parent_id'=>$request->parent_id,
        'slug'=> $request->name
        ]);
        DB::commit();
        return redirect()->route('categories.index')->withSuccessMessage('Bạn đã tạo mới thành công');
    } catch (\Exceptions $exception) {
        DB::rollBack();
        Log::error(message: 'Messeage:' . $exception->getMessage() . '----Line :' . $exception->getLine());
    }
    }

    public function edit($id){
        $category = $this->category->find($id);
        $htmlOption = $this->getCategory($category ->parent_id);
        return view('admin.category.edit',compact('category', 'htmlOption'));
    }
    public function update($id , Request $request){
         $this->category->find($id)->update([
            'name'=>$request->name,
            'parent_id'=>$request->parent_id,
            'slug'=> $request->name
            ]);
            if (session('success_message')) {
                Alert::success('Thành Công', session('success_message'));
            }

        return redirect()->route('categories.index')->withSuccessMessage('Bạn đã cập nhật thành công');
    }
    public function getCategory($parentId){
        $data = $this->category->all();
        $recusive = new Recusive($data);
        $htmlOption = $recusive -> categoryRecusive($parentId);
        return $htmlOption;
    }
    public function delete($id){
        return $this->deleteModelTrait($id, $this->category);
    }
}
