<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Content extends Model
{
    use HasFactory;
    public $timestamps = true;
    protected $guarded = ['id'];

    public function contentCategory()
    {
        return $this->belongsTo(ContentCategory::class);
    }

    public function version()
    {
        return $this->belongsTo(Version::class);
    }
}
