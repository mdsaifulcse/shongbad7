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
    public function index(Request $request, $category,$subCate=null,$newsId=null,$title=null, News $news)
    {

        $categoryData=Category::where('link',$category)->first();

        if (empty($categoryData))
        {
            return redirect()->back();
        }


        $categoryNews=News::with('newsCategory','newsSubCategory','newsAuthor','newsAuthor.profile')
            ->categoryNews('newsCategory','categories','link',$category)
            ->where('published_status',News::PUBLISHED);

        $allLatestNews=News::with('newsCategory','newsSubCategory')
            ->orderBy('id','DESC')->where('published_status',News::PUBLISHED)
            ->where('id','!=',$newsId);

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


            $latestCatNews=$allLatestNews->categoryNews('newsCategory','categories','link',$category)
                ->where('id','!=',$newsId)->take(5)->get();


            $latestNews=News::with('newsCategory','newsSubCategory')
                ->orderBy('id','DESC')->where('published_status',News::PUBLISHED)
                ->where('id','!=',$newsId)->take(4)->get();


            $categoryMostReadNews=$categoryMostReadNews->take(5)->get();

            $mostReadNews=$mostReadNews->take(4)->get();

            $readNews=MostReadNews::where('news_id',$newsId)->first();
            if (empty($readNews))
            {
                MostReadNews::create(['news_id'=>$newsId,'category_id'=>$categoryData->id,'read_number'=>1]);

            }else{
                $readNews->update(['read_number'=>$readNews->read_number+1]);
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


        if ($request->ajax()){
            $categoryNews= $categoryNews->simplePaginate(2);

            $output = '';

            if (count($categoryNews)>0){

                $url='';

                foreach ($categoryNews as $news){
                    $output.="
        if (isset($news->newsSubCategory))
        {
            $url=$news->newsCategory->link.'/'.$news->newsSubCategory->link.'/'.$news->id.'/'.$news->title;
        }else{
            $url=$news->newsCategory->link.'/'.'news'.'/'.$news->id.'/'.$news->title;
        }

        

        <div class=\"col-xs-12 col-sm-12 col-md-6 col-lg-6\">
            <div class=\"single-block cat-block\">
                <div class=\"row\">
                    <div class=\"col-xs-5 col-sm-5\">
                        <div class=\"img-box\">
                            <a href=\"{{url($url)}}\" title=\"{{$news->title}}\">
                                <img alt=\"{{$news->title}}\" src=\"{{asset($news->feature_medium)}}\" data-src=\"{{asset($news->feature_medium)}}\" class=\"lazyload img-responsive\">
                            </a>
                        </div>
                    </div>
                    <div class=\"col-xs-7 col-sm-7\">
                        <div class=\"paddingTop10 paddingRight10\">
                            <h3 style=\"font-size:1.1em;\"><a href=\"{{url($url)}}\" title=\"{{$news->title}}\"> {{$news->title}}</a></h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>";
                } // end foreach

            }

        }


        $categoryNews= $categoryNews->simplePaginate(2);


        return view('client.category-news',compact('categoryData','subCatData','categoryNews','allLatestNews','categoryMostReadNews','mostReadNews'));
    }


    public function topicalNews($topic)
    {

        if ($topic!=null){

            $topicalNews=News::with('newsCategory','newsSubCategory')
                ->orderBy('id','DESC')->where(['published_status'=>News::PUBLISHED])
                ->where('topic','LIKE',"%{$topic}%")
                ->take(20)->get();

            return view('client.topical-news',compact('topicalNews','topic'));

        }else{
            return redirect()->back();
        }

    }

}
