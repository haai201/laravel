<?php

namespace App\Http\Controllers;

use App\Category;
use App\Product;
use App\ProductTag;
use App\Http\Requests\ProductAddRequest;
use App\Tag;
use App\ProductImage;
use App\Components\Recusive;
use Illuminate\Http\Request;
use App\Traits\StorageImageTrait;
use App\Traits\DeleteModelTrait;
use Illuminate\Support\Facades\Log;
use Storage;
use DB;


class AdminProductController extends Controller
{
    use DeleteModelTrait ,StorageImageTrait;
    private $category;
    private $product;
    private $tag;
    private $productTag;
    private $productImage;
    public function __construct(Category $category, Product $product, ProductImage $productImage, Tag $tag, ProductTag $productTag)
    {
        $this->product = $product;
        $this->category = $category;
        $this->productImage = $productImage;
        $this->tag = $tag;
        $this->productTag = $productTag;
    }
    public function index()
    {
        $products = $this->product->latest()->paginate(5);
        return view('admin.product.index', compact('products'));
    }
    public function create()
    {
        $htmlOption = $this->getCategory($parentId = '');
        return view('admin.product.add', compact('htmlOption'));
    }
    public function getCategory($parentId)
    {
        $data = $this->category->all();
        $recusive = new Recusive($data);
        $htmlOption = $recusive->categoryRecusive($parentId);
        return $htmlOption;
    }
    public function store(ProductAddRequest $request)
    {
        try {
            DB::beginTransaction();
            $dataProductCreate = [
                'name' => $request->name,
                'price' => $request->price,
                'content' => $request->contents,
                'user_id' => auth()->id(),
                'category_id' => $request->category_id
            ];
            $dataUploadFeatureImage = $this->storageTraitUpload($request, fieldName: 'feature_image_path', foderName: 'product');
            if (!empty($dataUploadFeatureImage)) {
                $dataProductCreate['feature_image_name'] = $dataUploadFeatureImage['file_name'];
                $dataProductCreate['feature_image_path'] = $dataUploadFeatureImage['file_path'];
            }
            $product = $this->product->create($dataProductCreate);
            //Insert data vào product_images
            if ($request->hasFile('image_path')) {
                foreach ($request->image_path as $fileItem) {
                    $dataProductImageDetail = $this->storageTraitUploadMultiple($fileItem, foderName: 'product');
                    $product->images()->create([
                        'image_path' => $dataProductImageDetail['file_path'],
                        'image_name' => $dataProductImageDetail['file_name']

                    ]);
                }
            }

            //Insert tags vào product
            if (!empty($request->tags)) {
                //Insert tags
                foreach ($request->tags as $tagItem) {
                    $tagInstance = $this->tag->firstOrcreate(['name' => $tagItem]);
                    $tagIds[] = $tagInstance->id;
                }
            }
            $product->tags()->attach($tagIds);
            DB::commit();
            return redirect()->route('product.index');
        } catch (\Exceptions $exception) {
            DB::rollBack();
            Log::error(message: 'Messeage:' . $exception->getMessage() . '----Line :' . $exception->getLine());
        }
    }
    public function edit($id)
    {
        $product = $this->product->find($id);
        $htmlOption = $this->getCategory($product->category_id);
        return view('admin.product.edit', compact('htmlOption', 'product'));
    }
    public function update(Request $request ,$id)
        {
            try {
                DB::beginTransaction();
                $dataProductUpdate = [
                    'name' => $request->name,
                    'price' => $request->price,
                    'content' => $request->contents,
                    'user_id' => auth()->id(),
                    'category_id' => $request->category_id
                ];
                $dataUploadFeatureImage = $this->storageTraitUpload($request, fieldName: 'feature_image_path', foderName: 'product');
                if (!empty($dataUploadFeatureImage)) {
                    $dataProductUpdate['feature_image_name'] = $dataUploadFeatureImage['file_name'];
                    $dataProductUpdate['feature_image_path'] = $dataUploadFeatureImage['file_path'];
                }
                $this->product->find($id)->update($dataProductUpdate);
                $product = $this->product->find($id);
                //Insert data vào product_images
                if ($request->hasFile('image_path')) {
                    $this->productImage->where('product_id',$id)->delete();
                    foreach ($request->image_path as $fileItem) {
                        $dataProductImageDetail = $this->storageTraitUploadMultiple($fileItem, foderName: 'product');
                        $product->images()->create([
                            'image_path' => $dataProductImageDetail['file_path'],
                            'image_name' => $dataProductImageDetail['file_name']
    
                        ]);
                    }
                }
    
                //Insert tags vào product
                if (!empty($request->tags)) {
                    //Insert tags
                    foreach ($request->tags as $tagItem) {
                        $tagInstance = $this->tag->firstOrCreate(['name' => $tagItem]);
                        $tagIds[] = $tagInstance->id;
                    }
                }
                $product->tags()->attach($tagIds);
                DB::commit();
                return redirect()->route('product.index');
            } catch (\Exceptions $exception) {
                DB::rollBack();
                Log::error(message: 'Messeage:' . $exception->getMessage() . '----Line :' . $exception->getLine());
            }
        }
        public function delete($id){
            return $this->deleteModelTrait($id, $this->product);
    }
}
