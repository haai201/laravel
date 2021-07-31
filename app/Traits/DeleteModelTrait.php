<?php
namespace App\Traits;
use Illuminate\Support\Log;


trait DeleteModelTrait{
    public function deleteModelTrait($id, $model){
        try {
            $model->find($id)->delete();
            return response()->json([
                'code' =>200,
                'message' =>'success'
            ], status: 200);
        }catch (\Exceptions $exception) {
            Log::error(message: 'Messeage:' . $exception->getMessage() . '----Line :' . $exception->getLine());
            return response()->json([
                'code' =>500,
                'message' =>'fail'
            ], status: 500);
        }
    }
}