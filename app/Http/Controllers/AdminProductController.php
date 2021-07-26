<?php

namespace App\Http\Controllers;
use App\Category;
use App\Product;
use App\Components\Recusive;
use Illuminate\Http\Request;
use App\Traits\StorageImageTrait;
use Storage;

class AdminProductController extends Controller
{
    use StorageImageTrait;
    private $category;
    public function __construct(Category $category, Product $product){
        $this->product = $product;
        $this->category = $category;

    }
    public function index(){
        return view('admin.product.index');
    }
    public function create(){
        $htmlOption = $this->getCategory($parentId = '');
        return view('admin.product.add',compact('htmlOption'));
    }
    public function getCategory($parentId){
        $data = $this->category->all();
        $recusive = new Recusive($data);
        $htmlOption = $recusive -> categoryRecusive($parentId);
        return $htmlOption;
    }
    public function store(Request $request)
    {
        $dataProductCreate =[
            'name' =>$request->name,
            'price' =>$request->price,
            'content' =>$request->contents,
            'user_id' =>auth()->id(),
            'category_id'=>$request->category_id
        ];
        $dataUploadFeatureImage = $this->storageTraitUpload($request, fieldName:'feature_image_path', foderName:'product');
        if(!empty($dataUploadFeatureImage)){
            $dataProductCreate['feature_image_name']=$dataUploadFeatureImage['file_name'];
            $dataProductCreate['feature_image_path']=$dataUploadFeatureImage['file_path'];

        }
        $product= $this->product->create($dataProductCreate);
    }
}
