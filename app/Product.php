<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{
    use SoftDeletes;
    protected $guarded=[];
    public function images(){
        return $this->hasMany(related: ProductImage::class, foreignKey:'product_id');
    }
    public function tags(){
        return $this->belongsToMany(related: Tag::class,table: 'product_tags', relatedPivotKey: 'tag_id')->withTimestamps();
    }
    public function category(){
        return $this->belongsTo(related: Category::class, foreignKey:'category_id');
    }
    public function productImages(){
        return $this->hasMany(related: ProductImage::class, foreignKey:'product_id');
    }
}
