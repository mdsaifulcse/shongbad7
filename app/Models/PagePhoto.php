<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class PagePhoto extends Model
{
    use HasFactory,SoftDeletes;


    protected $table = 'page_photos';
    protected $softDelete = true;

    protected $guarded =[];
}
