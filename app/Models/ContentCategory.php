<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ContentCategory extends Model
{
    use HasFactory;
    public $timestamps = true;
    protected $guarded = ['id'];
    protected $parentColumn = 'parent_id';

    public function contentCategory()
    {
        return $this->belongsTo(ContentCategory::class,'parent_id')->select('id','parent_id','name','position','last');
    }

    public function content()
    {
        return $this->hasMany(Content::class)->select('id','content_category_id','name','slug');
    }

    public function children()
    {
        return $this->hasMany(ContentCategory::class, $this->parentColumn)->select('id','parent_id','name','position','last');
    }

    public function allChildren()
    {
        return $this->children()->with('allChildren','content');
    }
}
