<?php

namespace App\Traits;
use Storage;
trait StorageImageTrait{
    public function storageTraitUpload($request, $fieldName, $foderName){
        if($request->hasFile($fieldName)){
        $file =$request->$fieldName;
        $fileNameOrigin=$file->getClientOriginalName();
        $fileNameHash = rand(1,20) .'.'. $file->getClientOriginalExtension();
        $filePath = $request->file($fieldName)->storeAs('public/'. $foderName. '/'.auth()->id() ,$fileNameHash);
        $dataUploadTrait =[
            'file_name'=>$fileNameOrigin,
            'file_path'=>Storage::url($filePath)          
        ];
        return $dataUploadTrait;
    }
    return null;
}
}
