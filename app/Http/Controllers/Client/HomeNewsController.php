<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\News;
use App\Models\User;
use Illuminate\Http\Request;

class HomeNewsController extends Controller
{
    public function index(News $news)
    {
        $newses=News::with('newsCategory','newsSubCategory')->where('published_status',News::PUBLISHED)
            ->orderBy('id','DESC');

        $coverNews=$newses->where(['is_cover_news'=>News::YES,'show_at_homepage'=>News::YES])
            ->orderBy('id','DESC')->take(3)->get();

        $homeNews=$newses->where(['show_at_homepage'=>News::YES])
            ->orderBy('id','DESC')->take(9)->get();

        $allLatestNews=$newses->orderBy('id','DESC')->take(10)->get();

        $educations=$newses->whereHas('newsCategory',function ($q){
                $q->where("categories.link",'education');
            })->take(4)->get();

        $technologies=News::with('newsCategory','newsSubCategory')
            ->where('published_status',News::PUBLISHED)->orderBy('id','DESC')
            ->categoryNews('newsCategory','categories','link','technology')->take(9)->get();

        $entertainments=News::with('newsCategory','newsSubCategory')
            ->where('published_status',News::PUBLISHED)->orderBy('id','DESC')
            ->categoryNews('newsCategory','categories','link','entertainment')->take(4)->get();

        $healths=News::with('newsCategory','newsSubCategory')
            ->where('published_status',News::PUBLISHED)->orderBy('id','DESC')
            ->categoryNews('newsCategory','categories','link','health')->take(6)->get();

        $probashs=News::with('newsCategory','newsSubCategory')
            ->where('published_status',News::PUBLISHED)->orderBy('id','DESC')
            ->categoryNews('newsCategory','categories','link','probash')->take(6)->get();


        $literatures=News::with('newsCategory','newsSubCategory')
            ->where('published_status',News::PUBLISHED)->orderBy('id','DESC')
            ->categoryNews('newsCategory','categories','link','literature')->take(6)->get();

        $interviews=News::with('newsCategory','newsSubCategory')
            ->where('published_status',News::PUBLISHED)->orderBy('id','DESC')
            ->categoryNews('newsCategory','categories','link','interview')->take(6)->get();

        $mostReadNews=News::with('newsCategory','newsSubCategory','mostReadNews')
                    ->whereHas('mostReadNews',function ($q){
                        $q->orderBy("most_read_news.read_number",'DESC');
                    })->take(10)->get();

        return view('client.index',compact('coverNews','homeNews','allLatestNews','mostReadNews','educations','technologies','entertainments','healths','probashs','literatures','interviews'));
    }

    public function newsAuthor($userId)
    {

        $author=User::with('profile')->findOrFail($userId);

        $authorNews=News::with('newsCategory','newsSubCategory')->where(['published_status'=>News::PUBLISHED,'show_at_homepage'=>News::YES,'news_author_id'=>$userId])
            ->orderBy('id','DESC')->take(20)->get();

        return view('client.author-news',compact('author','authorNews'));
    }


}
