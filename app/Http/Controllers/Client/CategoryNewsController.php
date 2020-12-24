<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Models\MostReadNews;
use App\Models\News;
use App\Models\SubCategory;
use App\Models\Category;
use Carbon\CarbonTimeZone;
use Illuminate\Http\Request;

use EasyBanglaDate\Types\BnDateTime ;


class CategoryNewsController extends Controller
{
    public function index($category,$subCate=null,$newsId=null,$title=null)
    {

        $categoryData=Category::where('link',$category)->first();

        if (empty($categoryData))
        {
            return redirect()->back();
        }


        $categoryNews=News::with('newsCategory','newsSubCategory','newsAuthor','newsAuthor.profile')
            ->whereHas('newsCategory',function ($q)use($category){
                $q->where("categories.link", "$category");
            });
        $allLatestNews=News::with('newsCategory','newsSubCategory')
            ->orderBy('id','DESC')->where('id','!=',$newsId);

        $categoryMostReadNews=News::with('newsCategory','newsSubCategory','mostReadNews')
            ->whereHas('mostReadNews',function ($q){
                $q->orderBy("most_read_news.read_number",'DESC');
            })->where('category_id',$categoryData->id);

        $mostReadNews=News::with('newsCategory','newsSubCategory','mostReadNews')
            ->whereHas('mostReadNews',function ($q){
                $q->orderBy("most_read_news.read_number",'DESC');
            });

        if ($newsId!=null)
        {
            News::findOrFail($newsId);

            $news=$categoryNews->where('id',$newsId)->first();


            $latestCatNews=$allLatestNews->whereHas('newsCategory',function ($q)use($category){
                    $q->where("categories.link", "$category");
                })
                ->where('id','!=',$newsId)->take(5)->get();


            $latestNews=News::with('newsCategory','newsSubCategory')
                ->orderBy('id','DESC')->where('id','!=',$newsId)->take(4)->get();


            $categoryMostReadNews=$categoryMostReadNews->take(5)->get();

            $mostReadNews=$mostReadNews->take(4)->get();

            $readNews=MostReadNews::where('news_id',$newsId)->first();
            if (empty($readNews))
            {
                MostReadNews::create(['news_id'=>$newsId,'category_id'=>$categoryData->id,'read_number'=>1]);

            }else{
               // $readNews->update(['read_number'=>$readNews->read_number+1]);
            }

            return view('client.news-details',compact('news','latestCatNews','latestNews','categoryMostReadNews','mostReadNews'));
        }



        $subCatData='';
        if (!is_null($subCate) && $subCate!='news')
        {
            $subCatData=SubCategory::where('link',$subCate)->first();

            if (empty($subCatData))
            {
                return redirect()->back();
            }

            $categoryNews=$categoryNews->whereHas('newsSubCategory',function ($q)use($subCate){
                $q->where("sub_categories.link", "$subCate");
            });
        }

        $allLatestNews=$allLatestNews->take(5)->get();
        $categoryMostReadNews=$categoryMostReadNews->take(10)->get();
        $mostReadNews=$mostReadNews->take(10)->get();


        $categoryNews= $categoryNews->take(21)->get();


        return view('client.category-news',compact('categoryData','subCatData','categoryNews','allLatestNews','categoryMostReadNews','mostReadNews'));
    }


    public function topicalNews($topic)
    {

        if ($topic!=null){

            return view('client.topical-news');

        }else{
            return redirect()->back();
        }

    }

}
