<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Components\Recusive;
use Illuminate\Support\Facades\Auth;
use App\Traits\DeleteModelTrait;


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
        return view('admin.category.index', compact('categories'));
        }
        
    }
    public function store(Request $request){
        $this->category->create([
        'name'=>$request->name,
        'parent_id'=>$request->parent_id,
        'slug'=> $request->name
        ]);
        return redirect()->route('categories.index');
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

        return redirect()->route('categories.index');
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
