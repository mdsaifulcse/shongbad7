<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Models\News;
use Illuminate\Http\Request;
use DB,Auth,MyHelper,DataLoad;

class ArchiveController extends Controller
{
    public function  archiveNews()
    {

        $newses=News::with('newsCategory','newsSubCategory')
            ->orderBy('id','DESC')->paginate(20);

        $categories=DataLoad::categoryList();
        $states=DataLoad::divisionList();

        return view('client.archive-news',compact('newses','categories','states'));

    }

}
