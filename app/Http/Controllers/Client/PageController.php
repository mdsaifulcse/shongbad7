<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Models\Page;
use App\Models\Setting;
use Illuminate\Http\Request;

class PageController extends Controller
{
    public function aboutUs()
    {
        $setting=Setting::first();
        return view('client.about-us',compact('setting'));
    }
    public function contactUs()
    {
        $setting=Setting::first();
        return view('client.contact-us',compact('setting'));
    }

    public function pageView($link)
    {
        $page=Page::with('pagePhoto')->where('link',$link)->first();
        return view('client.page',compact('page'));
    }


}
