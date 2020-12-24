@extends('client.layouts.master')

@section('title')
    {{\App\Models\Setting::first()->value('company_slogan')}}
    @endsection


@section('style')

    @endsection

@section('content')

    <section class="leadBox paddingTop20 paddingTop65">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 main-content">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="row">


                                <div class="col-sm-8">
                                    @forelse($coverNews->take(1) as $coverData)
                                    <div class="single-block mainLead">

                                        <?php
                                        if (isset($coverData->newsSubCategory))
                                        {
                                            $url=$coverData->newsCategory->link.'/'.$coverData->newsSubCategory->link.'/'.$coverData->id.'/'.$coverData->title;
                                        }else{
                                            $url=$coverData->newsCategory->link.'/'.'news'.'/'.$coverData->id.'/'.$coverData->title;
                                        }
                                        ?>

                                        <div class="img-box">
                                            <a href="{{url($url)}}">
                                                <img src="{{asset('/client')}}/media/common/placeholder-bg.png" data-src="{{asset($coverData->feature_photo)}}" alt="{{$coverData->title}}" class="lazyload img-responsive"></a>
                                        </div>
                                        <div class="details">
                                            <h3>
                                                <a href="{{url($url)}}" >{{$coverData->title}}</a>
                                            </h3>
                                            <p>  </p>
                                        </div>
                                        <div class="meta">
                                            <span class="pull-left tags"><i class="fa fa-tags"></i>
                                                <a href="{{url('/topic/'.explode(',', $coverData->topic)[0])}}">{{explode(',', $coverData->topic)[0]}}</a>
                                            </span>
                                            <a href="{{url($coverData->newsCategory->link)}}" class="pull-right">{{$coverData->newsCategory->category_name}}</a>
                                        </div>
                                    </div>
                                        @empty

                                        @endforelse

                                </div>

                                <div class="col-sm-4">

                                    @forelse($coverNews->skip(1)->take(2) as $data)
                                    <div class="single-block subLead ">

                                        <?php
                                        if (isset($data->newsSubCategory))
                                        {
                                            $url=$data->newsCategory->link.'/'.$data->newsSubCategory->link.'/'.$data->id.'/'.$data->title;
                                        }else{
                                            $url=$data->newsCategory->link.'/'.'news'.'/'.$data->id.'/'.$data->title;
                                        }

                                        ?>

                                        <div class="img-mobile-left">
                                            <div class="img-box">
                                                <a href="{{$url}}">
                                                    <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset($data->feature_medium)}}" alt="{{$data->title}}" class="lazyload img-responsive">
                                                </a>
                                            </div>
                                        </div>

                                        <div class="content-mobile-right">
                                            <div class="details">
                                                <h4><a href="{{$url}}">{{$data->title}}</a></h4>
                                            </div>
                                            <div class="meta hidden-xs">
                                            <span class="pull-left tags"><i class="fa fa-tags"></i>
                                                <a href="{{url('/topic/'.explode(',', $coverData->topic)[0])}}">{{explode(',', $coverData->topic)[0]}}</a></span>
                                                <a href="{{url($coverData->newsCategory->link)}}" class="pull-right">{{$data->newsCategory->category_name}}</a>
                                            </div>
                                        </div>

                                    </div>
                                    @empty



                                    @endforelse


                                </div><!-- end col-sm-4 -->
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        @forelse($homeNews as $news)

                        <div class="col-sm-4">
                            <div class="single-block">

                                <?php
                                if (isset($news->newsSubCategory))
                                {
                                    $url=$news->newsCategory->link.'/'.$news->newsSubCategory->link.'/'.$news->id.'/'.$news->title;
                                }else{
                                    $url=$news->newsCategory->link.'/'.'news'.'/'.$news->id.'/'.$news->title;
                                }

                                ?>

                                <div class="img-mobile-left">
                                    <div class="img-box">
                                        <a href="{{$url}}">
                                            <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset($news->feature_medium)}}" alt="{{$news->title}}" class="lazyload img-responsive"></a>
                                    </div>
                                </div>

                                <div class="content-mobile-right">
                                    <div class="details"><h4><a href="{{$url}}">{{$news->title}}</a></h4>
                                    </div>
                                    <div class="meta"><span class="pull-left tags"><i class="fa fa-tags"></i>
                                            <a href="{{url('/topic/'.explode(',', $news->topic)[0])}}">{{explode(',', $news->topic)[0]}}</a></span>
                                        <a href="{{url($news->newsCategory->link)}}" class="pull-right">{{$news->newsCategory->category_name}}</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        @empty



                        @endforelse


                    </div>

                </div>
                <aside class="col-sm-4 aside">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="box-white">
                                <div class="jagoTab2 TwoTab">

                                    <ul class="nav nav-tabs nav-justified" role="tablist">
                                        <li role="presentation" class="active">
                                            <a href="education.htm#tab21" aria-controls="tab21" role="tab" data-toggle="tab">সর্বশেষ</a></li>
                                        <li role="presentation"><a href="education.htm#tab22" aria-controls="tab22" role="tab" data-toggle="tab">জনপ্রিয়</a></li>
                                    </ul>

                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane fade in active" id="tab21">
                                            <ul class="media-list">
                                                @forelse($allLatestNews->skip(1)->take(4) as $key=>$latestNews)
                                                    <?php
                                                    if (isset($latestNews->newsSubCategory))
                                                    {
                                                        $url=$latestNews->newsCategory->link.'/'.$latestNews->newsSubCategory->link.'/'.$latestNews->id.'/'.$latestNews->title;
                                                    }else{
                                                        $url=$latestNews->newsCategory->link.'/'.'news'.'/'.$latestNews->id.'/'.$latestNews->title;
                                                    }
                                                    ?>
                                                    <li class="media">
                                                        <div class="media-left">
                                                    <span>
                                                        {{MyHelper::bn_number($key)}}
                                                    </span>
                                                            <a href="{{url($url)}}">
                                                                <img class="lazyload media-object" src="{{asset('/client')}}/media/common/placeholder-xs.png" data-src="{{asset($latestNews->feature_small)}}" alt="{{$latestNews->title}}">
                                                            </a>
                                                        </div>
                                                        <div class="media-body">
                                                            <h4 class="media-heading"><a href="{{url($url)}}">{{$latestNews->title}}</a></h4>
                                                        </div>
                                                    </li>
                                                @empty
                                                    <h4 class="text-danger text-center">কোন ফলাফল পাওয়া যায়নি</h4>
                                                @endforelse
                                            </ul>
                                            <div class="allnews"><a href="{{url('/archive')}}" rel="nofollow">আজকের সর্বশেষ সবখবর</a></div>
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="tab22">
                                            <ul class="media-list">
                                                @forelse($mostReadNews->skip(1)->take(4) as $key=>$data)
                                                    <?php
                                                    if (isset($data->newsSubCategory))
                                                    {
                                                        $url=$data->newsCategory->link.'/'.$data->newsSubCategory->link.'/'.$data->id.'/'.$data->title;
                                                    }else{
                                                        $url=$data->newsCategory->link.'/'.'news'.'/'.$data->id.'/'.$data->title;
                                                    }
                                                    ?>
                                                    <li class="media">
                                                        <div class="media-left">
                                                    <span>
                                                        {{MyHelper::bn_number($key)}}
                                                    </span>
                                                            <a href="{{url($url)}}">
                                                                <img class="lazyload media-object" src="{{asset('/client')}}/media/common/placeholder-xs.png" data-src="{{asset($data->feature_small)}}" alt="{{$data->title}}">
                                                            </a>
                                                        </div>
                                                        <div class="media-body">
                                                            <h4 class="media-heading"><a href="{{url($url)}}">{{$data->title}}</a></h4>
                                                        </div>
                                                    </li>
                                                @empty
                                                    <h4 class="text-danger text-center">কোন ফলাফল পাওয়া যায়নি</h4>
                                                @endforelse

                                            </ul>
                                            <div class="allnews"><a href="{{url('/archive')}}" rel="nofollow"> আজকের সর্বশেষ সবখবর</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="text-center row">
                        <div class="col-sm-12 paddingBottom20">

                            <div id='12'></div>
                        </div>
                    </div>

                </aside>
            </div>
        </div>
    </section>

    <section class="Sports paddingTop20">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 main-content">
                    <div class="row">
                        <div class="col-sm-12">
                            <h2 class="catTitleBlock">
                                <div class="row">
                                    <div class="col-sm-8">
<span class="left">
<span class="catName">
<a href="education.htm">খেলাধুলা </a>
</span>
<span class="catSubName">
<a href="education.htm">ক্রিকেট</a>
<a href="education.htm">ফুটবল</a>
</span>
</span>
                                    </div>
                                    <div class="col-sm-4">
                                        <a href="education.htm" class="right">সবখবর <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                                    </div>
                                </div>
                            </h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-3 col-md-3">
                            <div class="single-block">

                                <div class="img-mobile-left">
                                    <div class="img-box"><a href="education.htm">
                                            <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="" class="lazyload img-responsive"></a>
                                    </div>
                                </div>

                                <div class="content-mobile-right">
                                    <div class="details">
                                        <h3><a href="education.htm">সবসময় খেলোয়াড়দের পক্ষেই থাকব : গাঙ্গুলি</a></h3>
                                    </div>
                                    <div class="meta"><span class="pull-left tags"><i class="fa fa-tags"></i>
                                        <a href="education.htm">ভারতীয়-ক্রিকেট</a></span>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-6 col-md-3 col-md-3">
                            <div class="single-block">

                                <div class="img-mobile-left">
                                    <div class="img-box"><a href="education.htm">
                                            <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="" class="lazyload img-responsive"></a>
                                    </div>
                                </div>

                                <div class="content-mobile-right">
                                    <div class="details">
                                        <h3><a href="education.htm">সবসময় খেলোয়াড়দের পক্ষেই থাকব : গাঙ্গুলি</a></h3>
                                    </div>
                                    <div class="meta"><span class="pull-left tags"><i class="fa fa-tags"></i> <a href="education.htm">ভারতীয়-ক্রিকেট</a></span>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-6 col-md-3 col-md-3">
                            <div class="single-block">

                                <div class="img-mobile-left">
                                    <div class="img-box"><a href="education.htm">
                                            <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="" class="lazyload img-responsive"></a>
                                    </div>
                                </div>

                                <div class="content-mobile-right">
                                    <div class="details">
                                        <h3><a href="education.htm">সবসময় খেলোয়াড়দের পক্ষেই থাকব : গাঙ্গুলি</a></h3>
                                    </div>
                                    <div class="meta"><span class="pull-left tags"><i class="fa fa-tags"></i> <a href="education.htm">ভারতীয়-ক্রিকেট</a></span>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-6 col-md-3 col-md-3">
                            <div class="single-block">

                                <div class="img-mobile-left">
                                    <div class="img-box"><a href="education.htm">
                                            <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="" class="lazyload img-responsive"></a>
                                    </div>
                                </div>

                                <div class="content-mobile-right">
                                    <div class="details">
                                        <h3><a href="education.htm">সবসময় খেলোয়াড়দের পক্ষেই থাকব : গাঙ্গুলি</a></h3>
                                    </div>
                                    <div class="meta"><span class="pull-left tags"><i class="fa fa-tags"></i> <a href="education.htm">ভারতীয়-ক্রিকেট</a></span>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
        </div>
    </section>

    <section>
        <div class="container text-center paddingTopBottom20">
            <div class="row">
                <div class="col-sm-12">

                    <div id='div-gpt-ad-1576387682991-0'></div>
                </div>
            </div>
        </div>
    </section>

    <section class="deshjure">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 main-content">
                    <div class="row">
                        <div class="col-sm-12">
                            <h2 class="catTitle"><a href="education.htm">দেশজুড়ে</a><span class="liner"></span></h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="single-block">
                                <div class="img-box"><a href="education.htm">
                                        <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="কলপ্রতি এক পয়সা কেটে নিয়ে কোভিড তহবিল গঠনের পরামর্শ ড. আতিউরের" class="lazyload img-responsive"></a>
                                </div>
                                <div class="details">
                                    <h4><a href="education.htm">কলপ্রতি এক পয়সা কেটে নিয়ে কোভিড তহবিল গঠনের পরামর্শ ড. আতিউরের</a></h4>
                                </div>
                                <div class="meta"><span class="pull-left tags"><i class="fa fa-tags"></i> <a href="education.htm">করোনাভাইরাস</a></span>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="media"><div class="media-left media-top"><a href="education.htm">
                                        <img src="{{asset('/client')}}/media/common/placeholder-xs.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="খুলনায় একদিনে করোনা আক্রান্তের রেকর্ড" class="lazyload"></a>
                                </div>
                                <div class="media-body"><h4 class="media-heading"><a href="education.htm">খুলনায় একদিনে করোনা আক্রান্তের রেকর্ড</a></h4>
                                    <div class="meta"><i class="fa fa-tags"></i> <a href="education.htm">করোনাভাইরাস</a>
                                    </div>
                                </div>
                            </div>

                            <div class="media"><div class="media-left media-top"><a href="education.htm">
                                        <img src="{{asset('/client')}}/media/common/placeholder-xs.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="সিলেটে আইসিইউতে করোনা রোগীর মৃত্যু" class="lazyload"></a>
                                </div>
                                <div class="media-body"><h4 class="media-heading"><a href="education.htm">সিলেটে আইসিইউতে করোনা রোগীর মৃত্যু</a></h4><div class="meta"><i class="fa fa-tags"></i> <a href="topic/করোনাভাইরাস.htm">করোনাভাইরাস</a>
                                    </div>
                                </div>
                            </div>

                            <div class="media">
                                <div class="media-left media-top"><a href="education.htm">
                                        <img src="{{asset('/client')}}/media/common/placeholder-xs.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="করোনা আক্রান্ত ব্যাংক কর্মকর্তার পাশে সাবেক স্বাস্থ্যমন্ত্রী" class="lazyload"></a>
                                </div>
                                <div class="media-body"><h4 class="media-heading"><a href="education.htm">করোনা আক্রান্ত ব্যাংক কর্মকর্তার পাশে সাবেক স্বাস্থ্যমন্ত্রী</a></h4>
                                    <div class="meta"><i class="fa fa-tags"></i> <a href="education.htm">করোনাভাইরাস</a></div></div></div><div class="media">
                                <div class="media-left media-top"><a href="education.htm">
                                        <img src="{{asset('/client')}}/media/common/placeholder-xs.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="রংপুরে করোনা থেকে সুস্থ হয়ে বাড়ি ফিরলেন ১০০ জন" class="lazyload"></a>
                                </div>
                                <div class="media-body">
                                    <h4 class="media-heading"><a href="education.htm">রংপুরে করোনা থেকে সুস্থ হয়ে বাড়ি ফিরলেন ১০০ জন</a></h4>
                                    <div class="meta"><i class="fa fa-tags"></i> <a href="education.htm">করোনাভাইরাস</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                            <div class="single-block">
                                <div class="img-mobile-left">
                                    <div class="img-box"><a href="education.htm">
                                            <img src="{{asset('/client')}}/media/common/placeholder-xs.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="মধ্যরাতে ব্রাহ্মণবাড়িয়ার তিন ‘রেড জোন’ লকডাউন" class="lazyload"></a>
                                    </div>
                                </div>

                                <div class="content-mobile-right">
                                    <div class="details"><h4><a href="education.htm">মধ্যরাতে ব্রাহ্মণবাড়িয়ার তিন ‘রেড জোন’ লকডাউন</a></h4>
                                    </div>
                                    <div class="meta"><span class="pull-left tags"><i class="fa fa-tags"></i> <a href="education.htm">করোনাভাইরাস</a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                            <div class="single-block">
                                <div class="img-mobile-left">
                                    <div class="img-box"><a href="education.htm">
                                            <img src="{{asset('/client')}}/media/common/placeholder-xs.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="মধ্যরাতে ব্রাহ্মণবাড়িয়ার তিন ‘রেড জোন’ লকডাউন" class="lazyload"></a>
                                    </div>
                                </div>

                                <div class="content-mobile-right">
                                    <div class="details"><h4><a href="education.htm">মধ্যরাতে ব্রাহ্মণবাড়িয়ার তিন ‘রেড জোন’ লকডাউন</a></h4>
                                    </div>
                                    <div class="meta"><span class="pull-left tags"><i class="fa fa-tags"></i> <a href="education.htm">করোনাভাইরাস</a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                            <div class="single-block">
                                <div class="img-mobile-left">
                                    <div class="img-box"><a href="education.htm">
                                            <img src="{{asset('/client')}}/media/common/placeholder-xs.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="মধ্যরাতে ব্রাহ্মণবাড়িয়ার তিন ‘রেড জোন’ লকডাউন" class="lazyload"></a>
                                    </div>
                                </div>

                                <div class="content-mobile-right">
                                    <div class="details"><h4><a href="education.htm">মধ্যরাতে ব্রাহ্মণবাড়িয়ার তিন ‘রেড জোন’ লকডাউন</a></h4>
                                    </div>
                                    <div class="meta"><span class="pull-left tags"><i class="fa fa-tags"></i> <a href="education.htm">করোনাভাইরাস</a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                            <div class="single-block">
                                <div class="img-mobile-left">
                                    <div class="img-box"><a href="education.htm">
                                            <img src="{{asset('/client')}}/media/common/placeholder-xs.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="মধ্যরাতে ব্রাহ্মণবাড়িয়ার তিন ‘রেড জোন’ লকডাউন" class="lazyload"></a>
                                    </div>
                                </div>

                                <div class="content-mobile-right">
                                    <div class="details"><h4><a href="education.htm">মধ্যরাতে ব্রাহ্মণবাড়িয়ার তিন ‘রেড জোন’ লকডাউন</a></h4>
                                    </div>
                                    <div class="meta"><span class="pull-left tags"><i class="fa fa-tags"></i> <a href="education.htm">করোনাভাইরাস</a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <aside class="col-sm-4 aside">
                    <div class="row">
                        <div class="col-sm-12 paddingBottom20">
                            <div class="text-center">

                                <div id='div-gpt-ad-1536578421108-0'></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="topSakkhatkar" style="overflow:hidden;">
                                <h2><a href="education.htm">মতামত</a></h2>
                                <div class="sakkhatkar-block" style="background:#f5f5f5;">
                                    <div class="media">
                                        <a class="pull-left" href="education.htm">
                                            <img class="lazyload media-object" src="{{asset('/client')}}/media/common/placeholder-xs.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="পাল্টে যাওয়া পৃথিবী কেমন হবে?" style="width:80px;">
                                        </a>
                                        <div class="media-body">
                                            <h4 class="media-heading"><a href="education.htm">পাল্টে যাওয়া পৃথিবী কেমন হবে?</a></h4>
                                        </div>
                                    </div><div class="media">
                                        <a class="pull-left" href="education.htm">
                                            <img class="lazyload media-object" src="{{asset('/client')}}/media/common/placeholder-xs.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="ভালো থাকবেন নাসিম ভাই" style="width:80px;">
                                        </a>
                                        <div class="media-body">
                                            <h4 class="media-heading"><a href="education.htm">ভালো থাকবেন নাসিম ভাই</a></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <h2 class="catTitle">এক ক্লিকে বিভাগের খবর &nbsp;<span class="liner"></span></h2>
                            <div class="single-block auto padding15">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <form action="div-dis-upz.htm" method="get">
                                            <div class="row form-group">
                                                <div class="col-sm-6">
                                                    <label for="division" class="sr-only">বিভাগ</label>
                                                    <select class="form-control" name="division" id="division">
                                                        <option>--বিভাগ--</option>
                                                        <option data-id="2" value="barisal">বরিশাল</option>
                                                        <option data-id="3" value="chittagong">চট্টগ্রাম</option>
                                                        <option data-id="4" value="dhaka">ঢাকা</option>
                                                        <option data-id="5" value="khulna">খুলনা</option>
                                                        <option data-id="6" value="rajshahi">রাজশাহী</option>
                                                        <option data-id="7" value="sylhet">সিলেট</option>
                                                        <option data-id="8" value="rangpur">রংপুর</option>
                                                        <option data-id="9" value="mymensingh">ময়মনসিংহ</option>
                                                    </select>
                                                </div>
                                                <div class="col-sm-6">
                                                    <label for="district" class="sr-only">জেলা</label>
                                                    <select class="form-control" name="district" id="district"></select>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <label for="upozilla" class="sr-only">উপজেলা</label>
                                                    <select class="form-control" name="upozilla" id="upozilla"></select>
                                                </div>
                                                <div class="col-sm-6">
                                                    <button type="submit" class="btn btn-danger btn-block">অনুসন্ধান
                                                        করুন
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </aside>
            </div>
        </div>
    </section>
    <section class="paddingTopBottom20">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 main-content category">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="single-cat-height">
                                <h2 class="catTitle"><a href="education.htm">আন্তর্জাতিক</a><span class="liner"></span></h2>
                                <div class="single-block">

                                    <div class="img-box"><a href="education.htm">
                                            <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="পাকিস্তানের সাবেক প্রধানমন্ত্রী গিলানি করোনা আক্রান্ত" class="lazyload img-responsive"></a>
                                    </div>
                                    <h4><a href="education.htm">পাকিস্তানের সাবেক প্রধানমন্ত্রী গিলানি করোনা আক্রান্ত</a>
                                    </h4>
                                    <div class="details">
                                        <div class="media">
                                            <div class="media-body">
                                                <h4 class="media-heading"><a href="education.htm">অক্সফোর্ড ভ্যাকসিন নিয়ে ৪ দেশের সঙ্গে অ্যাস্ট্রাজেনেকার চুক্তি</a>
                                                </h4>
                                            </div>
                                        </div>
                                        <div class="media">
                                            <div class="media-body">
                                                <h4 class="media-heading"><a href="education.htm">কুকুর দিয়ে করোনা শনাক্তে ৯৫ শতাংশ সাফল্য</a></h4>
                                            </div>
                                        </div>
                                        <div class="media">
                                            <div class="media-body">
                                                <h4 class="media-heading"><a href="education.htm">ভারতের আপত্তি উড়িয়ে নেপালের পার্লামেন্টে নতুন মানচিত্র বিল পাস</a>
                                                </h4>
                                            </div>
                                        </div>
                                        <div class="media">
                                            <div class="media-body">
                                                <h4 class="media-heading"><a href="education.htm">করোনা চিকিৎসায় অস্ট্রেলিয়ার ওষুধে আশা</a></h4>
                                            </div>
                                        </div>
                                        <div class="media">
                                            <div class="media-body">
                                                <h4 class="media-heading"><a href="education.htm">ভারতে একদিনে সর্বোচ্চ প্রায় চারশ মৃত্যু</a>
                                                </h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="allnews"><a href="inter#"> সবখবর</a></div>
                        </div>
                        <div class="col-sm-4">
                            <div class="single-cat-height">
                                <h2 class="catTitle"><a href="education.htm">রাজনীতি</a><span class="liner"></span></h2>
                                <div class="single-block">

                                    <div class="img-box"><a href="education.htm">
                                            <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="উন্নয়নের নামে ভাঁওতাবাজি চলছে : আসিফ নজরুল" class="lazyload img-responsive"></a></div><h4><a href="politics/news/589858.htm">উন্নয়নের নামে ভাঁওতাবাজি চলছে : আসিফ নজরুল</a></h4><div class="details"><div class="media"><div class="media-body"><h4 class="media-heading"><a href="politics/news/589839.htm">যতই চেষ্টা করেন করোনা থেকে বাঁচতে পারবেন না : মান্না</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="politics/news/589818.htm">বাজেট প্রণেতারা মূর্খের স্বর্গে বাস করছেন : শামসুজ্জামান দুদু</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="politics/news/589774.htm">মন্ত্রীদের জেলা সদরে চিকিৎসা নেয়া বাধ্যতামূলক করুন : আলাল</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="politics/news/589736.htm">গতানুগতিক সমালোচনার বৃত্তে আবর্তিত বিএনপি : কাদের</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="politics/news/589721.htm">‘এমন সাহসী কণ্ঠস্বর রাজনীতিতে বিরল’</a></h4></div></div></div>
                                </div>
                            </div>
                            <div class="allnews"><a href="education.htm"> সবখবর</a></div>
                        </div>
                        <div class="col-sm-4">
                            <div class="single-cat-height">
                                <h2 class="catTitle"><a href="education.htm">অর্থনীতি</a><span class="liner"></span></h2>
                                <div class="single-block">

                                    <div class="img-box"><a href="education.htm">
                                            <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="এলডিসি থেকে উত্তরণে তিন বছর দেরি করার পরামর্শ সানেমের" class="lazyload img-responsive"></a></div><h4><a href="economy/news/589834.htm">এলডিসি থেকে উত্তরণে তিন বছর দেরি করার পরামর্শ সানেমের</a></h4><div class="details"><div class="media"><div class="media-body"><h4 class="media-heading"><a href="economy/news/589827.htm">ইভ্যালিতে পাওয়া যাবে পার্টেক্স ফার্নিচারের পণ্য</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="economy/news/589810.htm">সব খাতের নড়চড় তবু অপরিবর্তিত মার্কেট ‘ঝুঁকি’</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="economy/news/589814.htm">শুধুমাত্র প্রবৃদ্ধিনির্ভর বাজেট জনকল্যাণ নিশ্চিত করে না</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="economy/news/589809.htm">সামাজিক নিরাপত্তায় বরাদ্দ বৃদ্ধির প্রস্তাবকে স্বাগত ‘নগদ’র</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="economy/news/589790.htm">অনলাইনে ভাইব্রেন্ট পণ্য কিনলেই ২০% মূল্যছাড়</a></h4></div></div></div>
                                </div>
                            </div>
                            <div class="allnews"><a href="education.htm"> সবখবর</a></div>
                        </div>
                    </div>
                </div>
                <aside class="col-sm-4 aside">

                    <div class="text-center">
                        <div class="row">
                            <div class="col-sm-12 paddingBottom20">

                                <div id='div-gpt-ad-1536578934367-0'></div>
                            </div>
                        </div>
                    </div>

                </aside>
            </div>
        </div>
    </section>
    <section class="paddingTop20 national">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 main-content">
                    <div class="row">
                        <div class="col-sm-12">
                            <h2 class="catTitle"><a href="education.htm">জাতীয়</a><span class="liner"></span></h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="single-block">
                                        <div class="img-mobile-left">
                                            <div class="img-box"><a href="education.htm">
                                                    <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="উচ্ছেদ পরবর্তী নদীর তীর পরিদর্শনে নৌ-সচিব" class="lazyload img-responsive"></a>
                                            </div>
                                        </div>

                                        <div class="content-mobile-right">
                                            <div class="details">
                                                <h4><a href="education.htm">উচ্ছেদ পরবর্তী নদীর তীর পরিদর্শনে নৌ-সচিব</a></h4>
                                            </div>
                                            <div class="meta"><span class="pull-left tags"><i class="fa fa-tags"></i> <a href="education.htm">সরকার</a></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="single-block">
                                        <div class="img-mobile-left">
                                            <div class="img-box"><a href="education.htm">
                                                    <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="উচ্ছেদ পরবর্তী নদীর তীর পরিদর্শনে নৌ-সচিব" class="lazyload img-responsive"></a>
                                            </div>
                                        </div>

                                        <div class="content-mobile-right">
                                            <div class="details">
                                                <h4><a href="education.htm">উচ্ছেদ পরবর্তী নদীর তীর পরিদর্শনে নৌ-সচিব</a></h4>
                                            </div>
                                            <div class="meta"><span class="pull-left tags"><i class="fa fa-tags"></i> <a href="education.htm">সরকার</a></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 col-md-6 col-md-3 col-lg-3">
                            <div class="single-block">

                                <div class="img-mobile-left">
                                    <div class="img-box"><a href="education.htm">
                                            <img src="{{asset('/client')}}/media/common/placeholder-xs.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="পূর্ব রাজাবাজারে স্বপ্ন-এর ভ্রাম্যমাণ আউটলেট" class="lazyload img-responsive"></a>
                                    </div>
                                </div>

                                <div class="content-mobile-right">
                                    <div class="details">
                                        <h4><a href="education.htm">পূর্ব রাজাবাজারে স্বপ্ন-এর ভ্রাম্যমাণ আউটলেট</a></h4>
                                    </div>
                                    <div class="meta"><span class="pull-left tags"><i class="fa fa-tags"></i> <a href="education.htm">করোনাভাইরাস</a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-6 col-md-3 col-lg-3">
                            <div class="single-block">

                                <div class="img-mobile-left">
                                    <div class="img-box"><a href="education.htm">
                                            <img src="{{asset('/client')}}/media/common/placeholder-xs.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="পূর্ব রাজাবাজারে স্বপ্ন-এর ভ্রাম্যমাণ আউটলেট" class="lazyload img-responsive"></a>
                                    </div>
                                </div>

                                <div class="content-mobile-right">
                                    <div class="details">
                                        <h4><a href="education.htm">পূর্ব রাজাবাজারে স্বপ্ন-এর ভ্রাম্যমাণ আউটলেট</a></h4>
                                    </div>
                                    <div class="meta"><span class="pull-left tags"><i class="fa fa-tags"></i> <a href="education.htm">করোনাভাইরাস</a></span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xs-12 col-md-6 col-md-3 col-lg-3">
                            <div class="single-block">

                                <div class="img-mobile-left">
                                    <div class="img-box"><a href="education.htm">
                                            <img src="{{asset('/client')}}/media/common/placeholder-xs.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="পূর্ব রাজাবাজারে স্বপ্ন-এর ভ্রাম্যমাণ আউটলেট" class="lazyload img-responsive"></a>
                                    </div>
                                </div>

                                <div class="content-mobile-right">
                                    <div class="details">
                                        <h4><a href="education.htm">পূর্ব রাজাবাজারে স্বপ্ন-এর ভ্রাম্যমাণ আউটলেট</a></h4>
                                    </div>
                                    <div class="meta"><span class="pull-left tags"><i class="fa fa-tags"></i> <a href="education.htm">করোনাভাইরাস</a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-6 col-md-3 col-lg-3">
                            <div class="single-block">

                                <div class="img-mobile-left">
                                    <div class="img-box"><a href="education.htm">
                                            <img src="{{asset('/client')}}/media/common/placeholder-xs.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="পূর্ব রাজাবাজারে স্বপ্ন-এর ভ্রাম্যমাণ আউটলেট" class="lazyload img-responsive"></a>
                                    </div>
                                </div>

                                <div class="content-mobile-right">
                                    <div class="details">
                                        <h4><a href="education.htm">পূর্ব রাজাবাজারে স্বপ্ন-এর ভ্রাম্যমাণ আউটলেট</a></h4>
                                    </div>
                                    <div class="meta"><span class="pull-left tags"><i class="fa fa-tags"></i> <a href="education.htm">করোনাভাইরাস</a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <aside class="col-sm-4 aside">


                    <div class="row">
                        <div class="col-sm-12">
                            <div class="fb-live">
                                <h2 class="no-margin"><a href="education.htm">Demo মানবতা</a>
                                </h2>
                                <div class="single-block">

                                    <div class="img-box"><a href="education.htm">
                                            <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="অর্থাভাবে শিশুর চিকিৎসা বন্ধ, পাশে দাঁড়ালেন এমপি স্মৃতি" class="lazyload img-responsive"></a></div><h4><a href="country/news/588915.htm">অর্থাভাবে শিশুর চিকিৎসা বন্ধ, পাশে দাঁড়ালেন এমপি স্মৃতি</a></h4><div class="details"><div class="media"><div class="media-left"><a href="national/news/588816.htm">
                                                    <img src="{{asset('/client')}}/media/common/placeholder-xs.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="একটি সংবাদের শিরোনাম নিয়ে Demo নিউজের দুঃখ প্রকাশ" class="lazyload media-object"></a></div><div class="media-body"><h4 class="media-heading"><a href="national/news/588816.htm">একটি সংবাদের শিরোনাম নিয়ে Demo নিউজের দুঃখ প্রকাশ</a></h4></div></div><div class="media"><div class="media-left"><a href="national/news/588704.htm">
                                                    <img src="{{asset('/client')}}/media/common/placeholder-xs.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="শতাধিক পরিবার রাঁধেন এক হাঁড়িতে, পতিত জমিতে ফলান সবজি" class="lazyload media-object"></a></div><div class="media-body"><h4 class="media-heading"><a href="national/news/588704.htm">শতাধিক পরিবার রাঁধেন এক হাঁড়িতে, পতিত জমিতে ফলান সবজি</a></h4></div></div><div class="media"><div class="media-left"><a href="country/news/588545.htm">
                                                    <img src="{{asset('/client')}}/media/common/placeholder-xs.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="প্রধানমন্ত্রীর দেয়া ঘরে ঘুমাচ্ছেন শেরপুরের সেই ভিক্ষুক" class="lazyload media-object"><i class="fa fa-play"></i></a></div><div class="media-body"><h4 class="media-heading"><a href="country/news/588545.htm">প্রধানমন্ত্রীর দেয়া ঘরে ঘুমাচ্ছেন শেরপুরের সেই ভিক্ষুক</a></h4></div></div><div class="media"><div class="media-left"><a href="probash/news/588223.htm">
                                                    <img src="{{asset('/client')}}/media/common/placeholder-xs.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="জার্মানিজুড়ে বর্ণবাদ বিরোধী সমাবেশ" class="lazyload media-object"></a></div><div class="media-body"><h4 class="media-heading"><a href="probash/news/588223.htm">জার্মানিজুড়ে বর্ণবাদ বিরোধী সমাবেশ</a></h4></div></div><div class="media"><div class="media-left"><a href="country/news/587652.htm">
                                                    <img src="{{asset('/client')}}/media/common/placeholder-xs.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="‘ছেলে আমাকে খেতে দেয় না, কিছু বললেই শুধু মারে’" class="lazyload media-object"></a></div><div class="media-body"><h4 class="media-heading"><a href="country/news/587652.htm">‘ছেলে আমাকে খেতে দেয় না, কিছু বললেই শুধু মারে’</a></h4></div></div></div>
                                </div>
                                <div class="allnews">
                                    <a href="education.htm">
                                        আরও <i class="fa fa-angle-double-right"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </aside>
            </div>
        </div>
    </section>
    <section>
        <div class="container">
            <div class="row text-center marginTopBottom20">
                <div class="col-sm-12">

                    <div id='div-gpt-ad-1576388404299-1'></div>
                </div>
            </div>
        </div>
    </section>


    <section>
        <div class="container">
            <div class="row text-center marginTopBottom20">
                <div class="col-sm-12">

                    <div id='div-gpt-ad-1576388404299-0'></div>
                </div>
            </div>
        </div>
    </section>

    <section class="paddingTopBottom20">
        <div class="container">
            <div class="row">
                <div class="main-content category">
                    <div class="col-sm-6 col-xs-12 col-md-3 col-lg-3">
                        <div class="single-cat-height">
                            <h2 class="catTitle"><a href="education.htm">লাইফস্টাইল</a><span class="liner"></span></h2>
                            <div class="single-block">

                                <div class="img-box"><a href="education.htm">
                                        <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="সুস্বাদু আম দই তৈরির রেসিপি জেনে নিন" class="lazyload img-responsive"></a>
                                </div>
                                <h4><a href="education.htm">সুস্বাদু আম দই তৈরির রেসিপি জেনে নিন</a></h4>
                                <div class="details">
                                    <div class="media">
                                        <div class="media-body">
                                            <h4 class="media-heading"><a href="education.htm">রোগ প্রতিরোধ ক্ষমতা বাড়াতে এই ৩ খাবার যেভাবে খাবেন</a></h4>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-body">
                                            <h4 class="media-heading"><a href="education.htm">এই সময়ে ভাইরাস জ্বর হলে কী করবেন?</a></h4>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-body">
                                            <h4 class="media-heading"><a href="education.htm">করোনাভাইরাস এড়াতে যেসব জিনিস স্পর্শ করবেন না</a></h4>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-body">
                                            <h4 class="media-heading"><a href="education.htm">আপনি কি আগেই করোনায় আক্রান্ত হয়েছেন? যেসব লক্ষণে বুঝবেন</a></h4>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-body">
                                            <h4 class="media-heading"><a href="education.htm">প্রতিদিন আপেল খেলে কী হয়?</a></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="allnews"><a href="education.htm"> সবখবর</a></div>
                    </div>
                    <div class="col-sm-6 col-xs-12 col-md-3 col-lg-3">
                        <div class="single-cat-height">
                            <h2 class="catTitle"><a href="education.htm">লাইফস্টাইল</a><span class="liner"></span></h2>
                            <div class="single-block">

                                <div class="img-box"><a href="education.htm">
                                        <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="সুস্বাদু আম দই তৈরির রেসিপি জেনে নিন" class="lazyload img-responsive"></a>
                                </div>
                                <h4><a href="education.htm">সুস্বাদু আম দই তৈরির রেসিপি জেনে নিন</a></h4>
                                <div class="details">
                                    <div class="media">
                                        <div class="media-body">
                                            <h4 class="media-heading"><a href="education.htm">রোগ প্রতিরোধ ক্ষমতা বাড়াতে এই ৩ খাবার যেভাবে খাবেন</a></h4>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-body">
                                            <h4 class="media-heading"><a href="education.htm">এই সময়ে ভাইরাস জ্বর হলে কী করবেন?</a></h4>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-body">
                                            <h4 class="media-heading"><a href="education.htm">করোনাভাইরাস এড়াতে যেসব জিনিস স্পর্শ করবেন না</a></h4>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-body">
                                            <h4 class="media-heading"><a href="education.htm">আপনি কি আগেই করোনায় আক্রান্ত হয়েছেন? যেসব লক্ষণে বুঝবেন</a></h4>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-body">
                                            <h4 class="media-heading"><a href="education.htm">প্রতিদিন আপেল খেলে কী হয়?</a></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="allnews"><a href="education.htm"> সবখবর</a></div>
                    </div>
                    <div class="col-sm-6 col-xs-12 col-md-3 col-lg-3">
                        <div class="single-cat-height">
                            <h2 class="catTitle"><a href="education.htm">লাইফস্টাইল</a><span class="liner"></span></h2>
                            <div class="single-block">

                                <div class="img-box"><a href="education.htm">
                                        <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="সুস্বাদু আম দই তৈরির রেসিপি জেনে নিন" class="lazyload img-responsive"></a>
                                </div>
                                <h4><a href="education.htm">সুস্বাদু আম দই তৈরির রেসিপি জেনে নিন</a></h4>
                                <div class="details">
                                    <div class="media">
                                        <div class="media-body">
                                            <h4 class="media-heading"><a href="education.htm">রোগ প্রতিরোধ ক্ষমতা বাড়াতে এই ৩ খাবার যেভাবে খাবেন</a></h4>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-body">
                                            <h4 class="media-heading"><a href="education.htm">এই সময়ে ভাইরাস জ্বর হলে কী করবেন?</a></h4>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-body">
                                            <h4 class="media-heading"><a href="education.htm">করোনাভাইরাস এড়াতে যেসব জিনিস স্পর্শ করবেন না</a></h4>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-body">
                                            <h4 class="media-heading"><a href="education.htm">আপনি কি আগেই করোনায় আক্রান্ত হয়েছেন? যেসব লক্ষণে বুঝবেন</a></h4>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-body">
                                            <h4 class="media-heading"><a href="education.htm">প্রতিদিন আপেল খেলে কী হয়?</a></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="allnews"><a href="education.htm"> সবখবর</a></div>
                    </div>
                    <div class="col-sm-6 col-xs-12 col-md-3 col-lg-3">
                        <div class="single-cat-height">
                            <h2 class="catTitle"><a href="education.htm">লাইফস্টাইল</a><span class="liner"></span></h2>
                            <div class="single-block">

                                <div class="img-box"><a href="education.htm">
                                        <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="সুস্বাদু আম দই তৈরির রেসিপি জেনে নিন" class="lazyload img-responsive"></a>
                                </div>
                                <h4><a href="education.htm">সুস্বাদু আম দই তৈরির রেসিপি জেনে নিন</a></h4>
                                <div class="details">
                                    <div class="media">
                                        <div class="media-body">
                                            <h4 class="media-heading"><a href="education.htm">রোগ প্রতিরোধ ক্ষমতা বাড়াতে এই ৩ খাবার যেভাবে খাবেন</a></h4>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-body">
                                            <h4 class="media-heading"><a href="education.htm">এই সময়ে ভাইরাস জ্বর হলে কী করবেন?</a></h4>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-body">
                                            <h4 class="media-heading"><a href="education.htm">করোনাভাইরাস এড়াতে যেসব জিনিস স্পর্শ করবেন না</a></h4>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-body">
                                            <h4 class="media-heading"><a href="education.htm">আপনি কি আগেই করোনায় আক্রান্ত হয়েছেন? যেসব লক্ষণে বুঝবেন</a></h4>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-body">
                                            <h4 class="media-heading"><a href="education.htm">প্রতিদিন আপেল খেলে কী হয়?</a></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="allnews"><a href="education.htm"> সবখবর</a></div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <section class="Entertainment paddingTopBottom20 marginTop20">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h2 class="catTitleBlock">
<span class="left">
<span class="catName">
<a href="education.htm">বিনোদন </a>
</span>
<span class="catSubName">
<a href="education.htm">হলিউড</a>
<a href="education.htm">বলিউড</a>
</span>
</span>
                        <a href="education.htm" class="right">সবখবর <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                    </h2>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-3">
                    <div class="single-block">

                        <div class="img-mobile-left">
                            <div class="img-box">
                                <a href="education.htm">
                                    <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="করোনায় আক্রান্ত যন্ত্রসংগীত শিল্পী রিচার্ড কিশোর" class="lazyload img-responsive"></a>
                            </div>
                        </div>
                        <div class="content-mobile-right">
                            <div class="details">
                                <h3><a href="education.htm">করোনায় আক্রান্ত যন্ত্রসংগীত শিল্পী রিচার্ড কিশোর</a></h3>
                            </div>
                            <div class="meta"><span class="pull-left tags"><i class="fa fa-tags"></i> <a href="education.htm">মিউজিক-ভিডিও</a></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="single-block">

                        <div class="img-mobile-left">
                            <div class="img-box">
                                <a href="education.htm">
                                    <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="করোনায় আক্রান্ত যন্ত্রসংগীত শিল্পী রিচার্ড কিশোর" class="lazyload img-responsive"></a>
                            </div>
                        </div>
                        <div class="content-mobile-right">
                            <div class="details">
                                <h3><a href="education.htm">করোনায় আক্রান্ত যন্ত্রসংগীত শিল্পী রিচার্ড কিশোর</a></h3>
                            </div>
                            <div class="meta"><span class="pull-left tags"><i class="fa fa-tags"></i> <a href="education.htm">মিউজিক-ভিডিও</a></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="single-block">

                        <div class="img-mobile-left">
                            <div class="img-box">
                                <a href="education.htm">
                                    <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="করোনায় আক্রান্ত যন্ত্রসংগীত শিল্পী রিচার্ড কিশোর" class="lazyload img-responsive"></a>
                            </div>
                        </div>
                        <div class="content-mobile-right">
                            <div class="details">
                                <h3><a href="education.htm">করোনায় আক্রান্ত যন্ত্রসংগীত শিল্পী রিচার্ড কিশোর</a></h3>
                            </div>
                            <div class="meta"><span class="pull-left tags"><i class="fa fa-tags"></i> <a href="education.htm">মিউজিক-ভিডিও</a></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="single-block">

                        <div class="img-mobile-left">
                            <div class="img-box">
                                <a href="education.htm">
                                    <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="করোনায় আক্রান্ত যন্ত্রসংগীত শিল্পী রিচার্ড কিশোর" class="lazyload img-responsive"></a>
                            </div>
                        </div>
                        <div class="content-mobile-right">
                            <div class="details">
                                <h3><a href="education.htm">করোনায় আক্রান্ত যন্ত্রসংগীত শিল্পী রিচার্ড কিশোর</a></h3>
                            </div>
                            <div class="meta"><span class="pull-left tags"><i class="fa fa-tags"></i> <a href="education.htm">মিউজিক-ভিডিও</a></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-3">
                    <div class="single-block">

                        <div class="img-mobile-left">
                            <div class="img-box">
                                <a href="education.htm">
                                    <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="করোনায় আক্রান্ত যন্ত্রসংগীত শিল্পী রিচার্ড কিশোর" class="lazyload img-responsive"></a>
                            </div>
                        </div>
                        <div class="content-mobile-right">
                            <div class="details">
                                <h3><a href="education.htm">করোনায় আক্রান্ত যন্ত্রসংগীত শিল্পী রিচার্ড কিশোর</a></h3>
                            </div>
                            <div class="meta"><span class="pull-left tags"><i class="fa fa-tags"></i> <a href="education.htm">মিউজিক-ভিডিও</a></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="single-block">

                        <div class="img-mobile-left">
                            <div class="img-box">
                                <a href="education.htm">
                                    <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="করোনায় আক্রান্ত যন্ত্রসংগীত শিল্পী রিচার্ড কিশোর" class="lazyload img-responsive"></a>
                            </div>
                        </div>
                        <div class="content-mobile-right">
                            <div class="details">
                                <h3><a href="education.htm">করোনায় আক্রান্ত যন্ত্রসংগীত শিল্পী রিচার্ড কিশোর</a></h3>
                            </div>
                            <div class="meta"><span class="pull-left tags"><i class="fa fa-tags"></i> <a href="education.htm">মিউজিক-ভিডিও</a></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="single-block">

                        <div class="img-mobile-left">
                            <div class="img-box">
                                <a href="education.htm">
                                    <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="করোনায় আক্রান্ত যন্ত্রসংগীত শিল্পী রিচার্ড কিশোর" class="lazyload img-responsive"></a>
                            </div>
                        </div>
                        <div class="content-mobile-right">
                            <div class="details">
                                <h3><a href="education.htm">করোনায় আক্রান্ত যন্ত্রসংগীত শিল্পী রিচার্ড কিশোর</a></h3>
                            </div>
                            <div class="meta"><span class="pull-left tags"><i class="fa fa-tags"></i> <a href="education.htm">মিউজিক-ভিডিও</a></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="single-block">

                        <div class="img-mobile-left">
                            <div class="img-box">
                                <a href="education.htm">
                                    <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="করোনায় আক্রান্ত যন্ত্রসংগীত শিল্পী রিচার্ড কিশোর" class="lazyload img-responsive"></a>
                            </div>
                        </div>
                        <div class="content-mobile-right">
                            <div class="details">
                                <h3><a href="education.htm">করোনায় আক্রান্ত যন্ত্রসংগীত শিল্পী রিচার্ড কিশোর</a></h3>
                            </div>
                            <div class="meta"><span class="pull-left tags"><i class="fa fa-tags"></i> <a href="education.htm">মিউজিক-ভিডিও</a></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="paddingTopBottom20">
        <div class="container">
            <div class="main-content category">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="single-cat-height">
                            <h2 class="catTitle"><a href="education.htm">স্বাস্থ্য</a><span class="liner"></span></h2>
                            <div class="single-block">

                                <div class="img-box"><a href="education.htm">
                                        <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="করোনার সংক্রমণ-উপসর্গ নিয়ে মারা গেলেন যে ৩৩ চিকিৎসক" class="lazyload img-responsive"></a></div><h4><a href="health/news/589860.htm">করোনার সংক্রমণ-উপসর্গ নিয়ে মারা গেলেন যে ৩৩ চিকিৎসক</a></h4><div class="details"><div class="media"><div class="media-body"><h4 class="media-heading"><a href="health/news/589734.htm">করোনা চিকিৎসার জন্য প্রস্তুত হচ্ছে বিএসএমএমইউর কেবিন ব্লক</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="health/news/589618.htm">৩৯৯ আইসিইউ শয্যার কতটিতে আসলে সেবা মিলছে?</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="health/news/589057.htm">মেডিকেল টেকনোলজিস্ট নিয়োগে অনিয়মে জড়িতদের শাস্তি দাবি</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="health/news/589013.htm">রেসিডেন্ট এমডি-এমএস-এমফিল পরীক্ষা স্থগিত</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="health/news/587727.htm">অধ্যাপক গোলাম কিবরিয়ার মৃত্যুতে বিএসএমএমইউর উপাচার্যের শোক</a></h4></div></div></div>
                            </div>
                        </div>
                        <div class="allnews"><a href="education.htm"> সবখবর</a></div>
                    </div>
                    <div class="col-sm-3">
                        <div class="single-cat-height">
                            <h2 class="catTitle"><a href="education.htm">শিক্ষা</a><span class="liner"></span></h2>
                            <div class="single-block">

                                <div class="img-box"><a href="education.htm">
                                        <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="শিক্ষায় বরাদ্দ বেড়েছে ৫২৮৭ কোটি টাকা" class="lazyload img-responsive"></a></div><h4><a href="education/news/589354.htm">শিক্ষায় বরাদ্দ বেড়েছে ৫২৮৭ কোটি টাকা</a></h4><div class="details"><div class="media"><div class="media-body"><h4 class="media-heading"><a href="education/news/589179.htm">প্রাথমিক শিক্ষার ১৪৫ জন করোনায় আক্রান্ত</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="education/news/589171.htm">আজ টিভিতে মাধ্যমিক-কারিগরির ১৩ ক্লাস</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="education/news/589149.htm">আজ টিভিতে প্রাথমিকের যেসব ক্লাস</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="education/news/589101.htm">শিক্ষা বাজেটে ‘শুভঙ্করের ফাঁকি’ দেখতে চান না শিক্ষাবিদরা</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="education/news/589070.htm">বেসরকারি শিক্ষক নিয়োগে ৬ জটিলতা কাটছে</a></h4></div></div></div>
                            </div>
                        </div>
                        <div class="allnews"><a href="education.htm"> সবখবর</a></div>
                    </div>
                    <div class="col-sm-3">
                        <div class="single-cat-height">
                            <h2 class="catTitle"><a href="education.htm">আইন-আদালত</a><span class="liner"></span></h2>
                            <div class="single-block">

                                <div class="img-box"><a href="education.htm">
                                        <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="তিন মাদককারবারি একদিনের রিমান্ডে" class="lazyload img-responsive"></a></div><h4><a href="law-courts/news/589796.htm">তিন মাদককারবারি একদিনের রিমান্ডে</a></h4><div class="details"><div class="media"><div class="media-body"><h4 class="media-heading"><a href="law-courts/news/589788.htm">মানবপাচারকারী কামাল হোসেন তিনদিনের রিমান্ডে</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="law-courts/news/589773.htm">দুই হাজার ইয়াবাসহ গ্রেফতার মোশারফ কারাগারে</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="law-courts/news/589771.htm">মোবাইল ব্যাংকিং প্রতারক চক্রের ৭ সদস্য কারাগারে</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="law-courts/news/589759.htm">রিমান্ড শেষে কারাগারে জেএমবির দুই সদস্য</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="law-courts/news/589751.htm">করোনায় প্রাণ হারালেন অ্যাডভোকেট মোস্তাফিজুর</a></h4></div></div></div>
                            </div>
                        </div>
                        <div class="allnews"><a href="education.htm"> সবখবর</a></div>
                    </div>
                    <div class="col-sm-3">
                        <div class="single-cat-height">
                            <h2 class="catTitle"><a href="education.htm">সাক্ষাৎকার</a><span class="liner"></span></h2>
                            <div class="single-block">

                                <div class="img-box"><a href="education.htm">
                                        <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="ফের লকডাউন অর্থনীতিকে আরও বিপদগ্রস্ত করবে" class="lazyload img-responsive"></a></div><h4><a href="special-reports/news/588064.htm">ফের লকডাউন অর্থনীতিকে আরও বিপদগ্রস্ত করবে</a></h4><div class="details"><div class="media"><div class="media-body"><h4 class="media-heading"><a href="special-reports/news/587303.htm">প্রধানমন্ত্রীর অধীনে জাতীয় নিরাপত্তা কাউন্সিল গঠন সময়ের দাবি</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="special-reports/news/586586.htm">একটি পরিচ্ছন্ন পৃথিবীর অপেক্ষায়</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="special-reports/news/585084.htm">সহমর্মিতায় কাটুক ঈদ আনন্দ</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="special-reports/news/583330.htm">করোনায় বাজারব্যবস্থা ভেঙে গেছে, পুনর্নির্মাণ সরকারের দায়</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="special-reports/news/583037.htm">আউশ-আমন উৎপাদনের লক্ষ্যমাত্রা আরও বাড়াতে চাই</a></h4></div></div></div>
                            </div>
                        </div>
                        <div class="allnews"><a href="education.htm"> সবখবর</a></div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h2 class="catTitleBlock">
<span class="left">
<span class="catName">
<a href="education.htm">বিশেষ প্রতিবেদন</a>
</span>
</span>
                        <a href="education.htm" class="right">সবখবর <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                    </h2>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-3">
                    <div class="single-block">

                        <div class="img-mobile-left">
                            <div class="img-box"><a href="education.htm">
                                    <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="ধনীকে ধনী গরিবকে গরিব করার বাজেট" class="lazyload img-responsive"></a>
                            </div>
                        </div>

                        <div class="content-mobile-right">
                            <div class="details">
                                <h3><a href="education.htm">ধনীকে ধনী গরিবকে গরিব করার বাজেট</a></h3>
                            </div>
                            <div class="meta"><span class="pull-left tags"><i class="fa fa-tags"></i> <a href="education.htm">বাজেট</a></span>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="single-block">

                        <div class="img-mobile-left">
                            <div class="img-box"><a href="">
                                    <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="ধনীকে ধনী গরিবকে গরিব করার বাজেট" class="lazyload img-responsive"></a>
                            </div>
                        </div>

                        <div class="content-mobile-right">
                            <div class="details">
                                <h3><a href="education.htm">ধনীকে ধনী গরিবকে গরিব করার বাজেট</a></h3>
                            </div>
                            <div class="meta"><span class="pull-left tags"><i class="fa fa-tags"></i> <a href="education.htm">বাজেট</a></span>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="single-block">

                        <div class="img-mobile-left">
                            <div class="img-box"><a href="education.htm">
                                    <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="ধনীকে ধনী গরিবকে গরিব করার বাজেট" class="lazyload img-responsive"></a>
                            </div>
                        </div>

                        <div class="content-mobile-right">
                            <div class="details">
                                <h3><a href="education.htm">ধনীকে ধনী গরিবকে গরিব করার বাজেট</a></h3>
                            </div>
                            <div class="meta"><span class="pull-left tags"><i class="fa fa-tags"></i> <a href="education.htm">বাজেট</a></span>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="single-block">

                        <div class="img-mobile-left">
                            <div class="img-box"><a href="education.htm">
                                    <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="ধনীকে ধনী গরিবকে গরিব করার বাজেট" class="lazyload img-responsive"></a>
                            </div>
                        </div>

                        <div class="content-mobile-right">
                            <div class="details">
                                <h3><a href="education.htm">ধনীকে ধনী গরিবকে গরিব করার বাজেট</a></h3>
                            </div>
                            <div class="meta"><span class="pull-left tags"><i class="fa fa-tags"></i> <a href="education.htm">বাজেট</a></span>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="row"></div>
            </div>
    </section>


    <section class="paddingTopBottom20">
        <div class="container">
            <div class="row">
                <div class="category">
                    <div class="col-sm-3">
                        <div class="single-cat-height">
                            <h2 class="catTitle"><a href="education.htm">প্রবাস</a><span class="liner"></span></h2>
                            <div class="single-block">

                                <div class="img-box"><a href="education.htm">
                                        <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="সিঙ্গাপুরে পুনর্নির্মাণের কাজ শুরু ১৫ জুন থেকে" class="lazyload img-responsive"></a></div><h4><a href="probash/news/589826.htm">সিঙ্গাপুরে পুনর্নির্মাণের কাজ শুরু ১৫ জুন থেকে</a></h4><div class="details"><div class="media"><div class="media-body"><h4 class="media-heading"><a href="probash/news/589801.htm">দেশে আটকেপড়া প্রবাসীদের কাতারে ফিরেই উঠতে হবে ফাইভ স্টারে</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="probash/article/589698.htm">মালয়েশিয়ায় ফের করোনার জাল সনদ বিক্রি, তিন বাংলাদেশি গ্রেফতার</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="probash/article/589645.htm">কমে আসছে কাজের পরিসর, নীরবেই ফিরছেন আমিরাত প্রবাসীরা</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="probash/article/589591.htm">সিঙ্গাপুরে বাংলাদেশিদের মাঝে দূতাবাসের ত্রাণ বিতরণ</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="probash/article/589579.htm">কাতারে সবচেয়ে বেশি বাংলাদেশি করোনা আক্রান্ত</a></h4></div></div></div>
                            </div>
                        </div>
                        <div class="allnews"><a href="education.htm"> সবখবর</a></div>
                    </div>
                    <div class="col-sm-3">
                        <div class="single-cat-height">
                            <h2 class="catTitle"><a href="education.htm">ধর্ম</a><span class="liner"></span></h2>
                            <div class="single-block">

                                <div class="img-box"><a href="education.htm">
                                        <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="হাউজে কাওছারের পানি পানের আশায় চা বিতরণ" class="lazyload img-responsive"></a></div><h4><a href="religion/news/589787.htm">হাউজে কাওছারের পানি পানের আশায় চা বিতরণ</a></h4><div class="details"><div class="media"><div class="media-body"><h4 class="media-heading"><a href="religion/article/589722.htm">করোনার কারণে হজে যাবে না যেসব দেশ</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="religion/article/589677.htm">নারীদের জন্য বিশ্বনবির উপদেশ ও অনুপ্রেরণা</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="religion/article/589608.htm">যে আমল করলে অভাব মোচন হয়</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="religion/article/589466.htm">অসুস্থ ব্যক্তির সেবা ও সুস্থতার দোয়া</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="religion/news/589402.htm">জনপ্রিয় বক্তা তোফাজ্জল হোসেন ভৈরবীর ইন্তেকাল</a></h4></div></div></div>
                            </div>
                        </div>
                        <div class="allnews"><a href="education.htm"> সবখবর</a></div>
                    </div>
                    <div class="col-sm-3">
                        <div class="single-cat-height">
                            <h2 class="catTitle"><a href="education.htm">সাহিত্য</a><span class="liner"></span></h2>
                            <div class="single-block">

                                <div class="img-box"><a href="education.htm">
                                        <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="গাজী সাইফুলের চা’দের গল্প" class="lazyload img-responsive"></a></div><h4><a href="literature/article/589785.htm">গাজী সাইফুলের চা’দের গল্প</a></h4><div class="details"><div class="media"><div class="media-body"><h4 class="media-heading"><a href="literature/news/589025.htm">ফেরার পথ নেই</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="literature/news/588772.htm">আনিকা তাসনিম অনুপের লকডাউনের প্রেমপত্র</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="literature/article/588477.htm">বাবাকে নিয়ে লেখা সেরা গল্প বাছাই করবেন সাদাত হোসাইন</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="literature/news/588081.htm">ইচ্ছে বানাই</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="literature/news/586969.htm">ক্লাস পালানো ছেলেরা আসলেই মেধাবী হয়</a></h4></div></div></div>
                            </div>
                        </div>
                        <div class="allnews"><a href="education.htm"> সবখবর</a></div>
                    </div>
                    <div class="col-sm-3">
                        <div class="single-cat-height">
                            <h2 class="catTitle"><a href="education.htm">ইংলিশ ভার্সন </a><span class="liner"></span></h2>
                            <div class="single-block">

                                <div class="img-box"><a href="education.htm">
                                        <img src="{{asset('/client')}}/media/common/placeholder-sm.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="Seven unknowns ahead of Bara's return to action" class="lazyload img-responsive"></a></div><h4><a href="en/sports/news/50296.htm">Seven unknowns ahead of Bara's return to action</a></h4><div class="details"><div class="media"><div class="media-body"><h4 class="media-heading"><a href="en/national/news/50295.htm">General holidays only in coronavirus ‘Red Zones’</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="en/national/news/50294.htm">33 doctors die from Covid-19 in Bangladesh</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="en/international/news/50293.htm">Mahathir backs Biden, says re-electing Trump to be disaster</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="en/national/news/50292.htm">Condolences pour in for veteran politician Nasim</a></h4></div></div><div class="media"><div class="media-body"><h4 class="media-heading"><a href="en/national/news/50291.htm">Bangladesh overtakes China in coronavirus cases</a></h4></div></div></div>
                            </div>
                        </div>
                        <div class="allnews"><a href="education.htm"> সবখবর</a></div>
                    </div>
                </div>
            </div>
        </div>
    </section>


@endsection


@section('script')

    @endsection