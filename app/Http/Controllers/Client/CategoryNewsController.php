<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Models\MostReadNews;
use App\Models\News;
use App\Models\SubCategory;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoryNewsController extends Controller
{
    public function index($category,$subCate=null,$newsId=null,$title=null)
    {

        $categoryData=Category::where('link',$category)->first();

        if (empty($categoryData))
        {
            return redirect()->back();
        }


        $categoryNews=News::with('newsCategory','newsSubCategory')
            ->whereHas('newsCategory',function ($q)use($category){
                $q->where("categories.link", "$category");
            });



        if ($newsId!=null)
        {
            News::findOrFail($newsId);

            $news=$categoryNews->where('id',$newsId)->first();

            $latestCatNews=News::with('newsCategory','newsSubCategory')
                ->whereHas('newsCategory',function ($q)use($category){
                    $q->where("categories.link", "$category");
                })
                ->orderBy('id','DESC')->where('id','!=',$newsId)->take(5)->get();


            $latestNews=News::with('newsCategory','newsSubCategory')
                ->orderBy('id','DESC')->where('id','!=',$newsId)->take(4)->get();


            $readNews=MostReadNews::where('news_id',$newsId)->first();


            if (empty($readNews))
            {
                MostReadNews::create(['news_id'=>$newsId,'category_id'=>$categoryData->id,'read_number'=>1]);

            }else{
                $readNews->update(['read_number'=>$readNews->read_number+1]);
            }


            return view('client.news-details',compact('news','latestCatNews','latestNews'));
        }



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

        $categoryNews->get();


        return view('client.category-news',compact('categoryNews'));
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
