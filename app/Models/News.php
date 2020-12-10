<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class News extends Model
{
    use HasFactory,SoftDeletes;

    const PUBLISHED='Published';
    const UNPUBLISHED='Unpublished';

    const YES='Yes';
    const NO='No';

    protected $table='news';
    protected $fillable=['title','feature_photo','description','topic','published_status','published_date', 'is_cover_news','category_id','sub_cat_id','division_id','district_id','created_by','updated_by'];

}
