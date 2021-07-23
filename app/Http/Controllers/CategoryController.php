<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Components\Recusive;


class CategoryController extends Controller
{

    private $category;
    
    public function __construct(Category $category){
        
        $this->category = $category;
    }
    public function create(){
        return view('category.addnew', compact('htmlOption'));

     }

    public function index(){
        $categories=$this->category->latest()->paginate(5);
        return view('category.index', compact('categories'));
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
        $htmlOption = $this->getCategory();
        $category = $this->category->find($id);
        return view('category.edit',compact('category', -'htmlOption'));
    }
    public function getCategory(){
        $data = $this->category->all();
        $recusive = new Recusive($data);
        $htmlOption = $recusive -> categoryRecusive();
        return $htmlOption;
    }
    public function delete($id){
        $category = $this->category->find($id);
        return view('category.delete', compact('category'));
    }
}
