<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CategoryNewsController extends Controller
{
    public function index($category,$subCate=null,$newsId=null,$title=null)
    {

        if ($newsId!=null){

            return view('client.news-details');

        }


        return view('client.category-news');
    }
}
