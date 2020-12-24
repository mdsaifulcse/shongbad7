<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\News;
use Illuminate\Http\Request;

class HomeNewsController extends Controller
{
    public function index()
    {
        $coverNews=News::with('newsCategory','newsSubCategory')->where(['published_status'=>News::PUBLISHED,'is_cover_news'=>News::YES,'show_at_homepage'=>News::YES])
            ->orderBy('id','DESC')->take(3)->get();

        $homeNews=News::with('newsCategory','newsSubCategory')->where(['published_status'=>News::PUBLISHED,'show_at_homepage'=>News::YES])
            ->orderBy('id','DESC')->take(9)->get();

        $allLatestNews=News::with('newsCategory','newsSubCategory')
            ->orderBy('id','DESC')->take(10)->get();

        $mostReadNews=News::with('newsCategory','newsSubCategory','mostReadNews')
                    ->whereHas('mostReadNews',function ($q){
                        $q->orderBy("most_read_news.read_number",'DESC');
                    })->take(10)->get();

        return view('client.index',compact('coverNews','homeNews','allLatestNews','mostReadNews'));
    }


}
