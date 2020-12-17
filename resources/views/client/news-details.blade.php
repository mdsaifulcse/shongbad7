@extends('client.layouts.master')

@section('title')
    {{\App\Models\Setting::first()->value('company_slogan')}}
@endsection

@section('style')

    @endsection

@section('content')



    <section >

        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-8 main-content marginBottom20">
                    <div class="row marginBottom20">
                        <div class="col-sm-12">
                            <article class="box-white">
                                <div class="padding15 box-white">
                                    <ol class="breadcrumb hidden-print">
                                        <li><a href="index.html"><i class="fa fa-home text-danger"></i></a></li>
                                        <li>
                                            <a href="../../education.htm">শিক্ষা</a>
                                        </li>
                                    </ol>
                                    <h1 class="no-margin">
                                        ৩২ লাখ শিক্ষার্থী পাবে উপবৃত্তি ও মেধাবৃত্তি
                                    </h1>
                                    <div class="dividerDetails"></div>
                                    <blockquote class="no-margin no-padding">
                                        <div class="row">
                                            <div class="col-sm-8">
                                                <div class="media">
                                                    <div class="media-left hidden-print">
                                                        <img src="{{asset('/client')}}/media/common/placeholder-xs.png" data-src="{{asset('/client')}}/media/default/desktop.png" alt="নিজস্ব প্রতিবেদক" class="media-object" style="margin-top:5px;width:40px;height:40px;border-radius:100%;display:inline-block;">
                                                    </div>
                                                    <div class="media-body">
<span class="small text-muted time-with-author">
<i class="fa fa-pencil"></i>
<a class="hidden-print" href="#" style="display:inline-block;" rel="nofollow">নিজস্ব প্রতিবেদক</a>
<a class="visible-print-view" rel="nofollow">নিজস্ব প্রতিবেদক</a>
<br>
<i class="fa fa fa-clock-o text-danger"></i>
প্রকাশিত: ০৮:৪২ পিএম, ১১ জুন ২০২০
</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-4 text-right">
                                                <div class="hidden-print">
                                                    <div class="custom-social-share">
                                                        <div class="custom_share_count pull-left"></div>
                                                        <ul class="social-media custom-social-share">
                                                            <li>
                                                                <button type="button" onclick='window.open ("https://www.facebook.com/sharer.php?u=https://www.demonews.com/education/news/589371","mywindow","menubar=1,resizable=1,width=350,height=250");'>
                                                                    <i class="fa fa-facebook"></i></button>
                                                            </li>
                                                            <li>
                                                                <button type="button" onclick='window.open ("https://twitter.com/intent/tweet?text=৩২ লাখ শিক্ষার্থী পাবে উপবৃত্তি ও মেধাবৃত্তি&url=https://www.demonews.com/education/news/589371","mywindow","menubar=1,resizable=1,width=360,height=250");'>
                                                                    <i class="fa fa-twitter"></i></button>
                                                            </li>
                                                            <li>
                                                                <button type="button" data-action="share/whatsapp/share" onclick='window.open ("https://web.whatsapp.com/send?text=https://www.demonews.com/education/news/589371", "mywindow","menubar=1,resizable=1,width=360,height=450");'>
                                                                    <i class="fa fa-whatsapp" style="background: #25D366;"></i></button>
                                                            </li>
                                                            <li>
                                                                <button type="button" onclick="window.print();"><i class="fa fa-print"></i></button>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </blockquote>
                                </div>
                                <div class="paddingTop10">
                                    <div class="featured-image">
                                        <img src="{{asset('/client')}}/media/common/placeholder-bg.png" data-src="{{asset('/client')}}/media/default/desktop.png" style="width:100%;" class="lazyload" alt="৩২ লাখ শিক্ষার্থী পাবে উপবৃত্তি ও মেধাবৃত্তি">
                                    </div>
                                </div>
                                <div class="content-details">
                                    <p>আগামী অর্থবছরে ২৪ লাখ ৩০ হাজার শিক্ষার্থী উপবৃত্তি এবং সাত লাখ ৮৭ মেধাবৃত্তি পাবে। দুই খাতে প্রায় ৩২ লাখ শিক্ষার্থীকে বৃত্তি দেয়ার ঘোষণা দেয়া হয়েছে।</p>
                                    <p>বৃহস্পতিবার (১১ জুন) জাতীয় সংসদে &lsquo;অর্থনৈতিক উত্তরণ ও ভবিষ্যৎ পথপরিক্রমা&rsquo; শিরোনামে ২০২০-২১ অর্থবছরের জন্য পাঁচ লাখ ৬৮ হাজার কোটি টাকার বাজেট পেশ করেছেন অর্থমন্ত্রী আ হ ম মুস্তফা কামাল। এ সময় প্রস্তাবিত বাজেট বক্তৃতায় তিনি এ ঘোষণা দেন।</p>
                                    <p>অর্থমন্ত্রী বলেন, শিক্ষার সুযোগবঞ্চিত দরিদ্র মেধাবী ছাত্রছাত্রীর শিক্ষা নিশ্চিত করার জন্য প্রধানমন্ত্রীর বিশেষ উদ্যোগে আমরা প্রধানমন্ত্রীর শিক্ষা সহায়তা ট্রাস্ট ফান্ড গঠন করেছিলাম। এ ট্রাস্ট থেকে স্নাতক (পাস) ও সমমান পর্যায়ের শিক্ষার্থীদের মাঝে উপবৃত্তি ও শিক্ষাপ্রতিষ্ঠানের মাঝে টিউশন ফি&rsquo;র অর্থ প্রদান করা হচ্ছে।</p>
                                    <p>এছাড়া ২০২০-২০২১ অর্থবছরে মাধ্যমিক স্তরে পাঁচ লাখ ৫৭ হাজার ছাত্র, ১০ লাখ ৯৫ হাজার ছাত্রী, উচ্চ মাধ্যমিক স্তরে এক লাখ ১৬ হাজার ছাত্র, চার লাখ ৬২ হাজার ছাত্রী এবং ডিগ্রি স্তরে ৫০ হাজার ছাত্র ও দেড় লাখ ছাত্রীকে উপবৃত্তি দেয়া হবে বলেও জানান তিনি ।</p>
                                    <p>অর্থমন্ত্রী আরও বলেন, পাশাপাশি পাবলিক পরীক্ষার ফলাফলের ভিত্তিতে ইতোমধ্যে প্রায় ছয় লাখ শিক্ষার্থীকে মেধাবৃত্তি প্রদান করা হয়েছে। আগামী ২০২০-২০২১ অর্থবছরে আরও এক লাখ ৮৭ হাজার শিক্ষার্থীকে মেধাবৃত্তি প্রদান করা হবে। এছাড়া সৃজনশীল মেধা অন্বেষণ কার্যক্রম আয়োজনের মাধ্যমে সেরা প্রতিভাবানদের স্বীকৃতি দেয়ার ধারাও আমরা অব্যাহত রেখেছি।</p>
                                    <p><span style="color: #999999;"><em>এমইউএইচ/এসআর/এমকেএইচ</em></span></p>
                                </div>
                                <div id="images">
                                    <div class="adv-img text-center marginTopBottom20 hidden-print">
                                        <div data-id='_mwayss-ddc94da8d233a42141440a010aac16b2' class="hidden-print"></div>
                                        <script>
                                            (function(window, document, undefined) {
                                                var script_tag = document.createElement('script');
                                                script_tag.src = 'https://ad.mox.tv/mox/mwayss_invocation.min.js?pzoneid=4774&height=405&width=720&tld=demonews.com&ctype=div';
                                                var container = document.querySelectorAll('[data-id=_mwayss-ddc94da8d233a42141440a010aac16b2]')[0];
                                                container.setAttribute('id', (container.getAttribute('data-id')+(new Date()).getTime()));
                                                container.removeAttribute('data-id');
                                                container.parentNode.insertBefore(script_tag, container);
                                            })(window, document);
                                        </script>
                                    </div>
                                    <div class="adv-img text-center marginTopBottom20 hidden-print">

                                        <div id='div-gpt-ad-1509258458742-10'></div>
                                    </div>
                                </div>
                                <div class="paddingLeft10 paddingRight10 hidden-print photo-title">
                                    <ul class="photo-tags">
                                        <li><i class="fa fa-tags"></i></li>
                                        <li><a href="../../topic/বাজেট.htm">বাজেট</a></li>
                                        <li><a href="../../topic/সরকার.htm">সরকার</a></li>
                                    </ul>
                                </div>
                                <div class="marginBottom20 text-center hidden-print">

                                    <a href="../../donation.htm" rel="nofollow">
                                        <img src="{{asset('/client')}}/media/default/desktop.png" title="আসুন অসহায় মানুষের পাশে দাঁড়াই" alt="আসুন অসহায় মানুষের পাশে দাঁড়াই">
                                    </a>
                                </div>

                                <div class="row text-center advertisement hidden-print">
                                </div>

                                <hr>
                            </article>
                        </div>
                    </div>
                    <div class="marginBottom20 hidden-print">
                        <div id='vdo_ai_div'></div>
                        <script>(function(v,d,o,ai){ai=d.createElement('script');ai.defer=true;ai.async=true;ai.src=v.location.protocol+o;d.head.appendChild(ai);})(window, document, '//a.vdo.ai/core/demonews/vdo.ai.js');</script>
                    </div>

                    <div class="marginBottom20 hidden-print">
                        <h2 class="McatTitle"><span class="eee"> Demo নিউজে সর্বশেষ </span></h2>
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                                <div class="single-block">
                                    <div class="img-mobile-left">
                                        <div class="img-box">
                                            <a href="https://www.demonews.com/international/news/589867">
                                                <img src="{{asset('/client')}}/media/default/desktop.png" alt="জাপানের দক্ষিণ-পশ্চিমাঞ্চলে ভূমিকম্পের আঘাত" class="lazyload img-responsive">
                                            </a>
                                        </div>
                                    </div>

                                    <div class="content-mobile-right">
                                        <div class="details">
                                            <h3><a href="https://www.demonews.com/international/news/589867">জাপানের দক্ষিণ-পশ্চিমাঞ্চলে ভূমিকম্পের আঘাত</a></h3>
                                        </div>
                                        <div class="meta">
                                            <span class="tags"><a href="../../international.htm">আন্তর্জাতিক</a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                                <div class="single-block">
                                    <div class="img-mobile-left">
                                        <div class="img-box">
                                            <a href="https://www.demonews.com/international/news/589867">
                                                <img src="{{asset('/client')}}/media/default/desktop.png" alt="জাপানের দক্ষিণ-পশ্চিমাঞ্চলে ভূমিকম্পের আঘাত" class="lazyload img-responsive">
                                            </a>
                                        </div>
                                    </div>

                                    <div class="content-mobile-right">
                                        <div class="details">
                                            <h3><a href="https://www.demonews.com/international/news/589867">জাপানের দক্ষিণ-পশ্চিমাঞ্চলে ভূমিকম্পের আঘাত</a></h3>
                                        </div>
                                        <div class="meta">
                                            <span class="tags"><a href="../../international.htm">আন্তর্জাতিক</a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                                <div class="single-block">
                                    <div class="img-mobile-left">
                                        <div class="img-box">
                                            <a href="https://www.demonews.com/international/news/589867">
                                                <img src="{{asset('/client')}}/media/default/desktop.png" alt="জাপানের দক্ষিণ-পশ্চিমাঞ্চলে ভূমিকম্পের আঘাত" class="lazyload img-responsive">
                                            </a>
                                        </div>
                                    </div>

                                    <div class="content-mobile-right">
                                        <div class="details">
                                            <h3><a href="https://www.demonews.com/international/news/589867">জাপানের দক্ষিণ-পশ্চিমাঞ্চলে ভূমিকম্পের আঘাত</a></h3>
                                        </div>
                                        <div class="meta">
                                            <span class="tags"><a href="../../international.htm">আন্তর্জাতিক</a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                                <div class="single-block">
                                    <div class="img-mobile-left">
                                        <div class="img-box">
                                            <a href="https://www.demonews.com/international/news/589867">
                                                <img src="{{asset('/client')}}/media/default/desktop.png" alt="জাপানের দক্ষিণ-পশ্চিমাঞ্চলে ভূমিকম্পের আঘাত" class="lazyload img-responsive">
                                            </a>
                                        </div>
                                    </div>

                                    <div class="content-mobile-right">
                                        <div class="details">
                                            <h3><a href="https://www.demonews.com/international/news/589867">জাপানের দক্ষিণ-পশ্চিমাঞ্চলে ভূমিকম্পের আঘাত</a></h3>
                                        </div>
                                        <div class="meta">
                                            <span class="tags"><a href="../../international.htm">আন্তর্জাতিক</a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="marginBottom20 text-center hidden-print">

                        <div></div>
                    </div>
                    <div class="marginBottom20 hidden-print">
                        <h2 class="McatTitle"><span class="eee"> Demo নিউজে জনপ্রিয় </span></h2>
                        <div class="row">

                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                                <div class="single-block">
                                    <div class="img-mobile-left">
                                        <div class="img-box">
                                            <a href="../../country/news/589435.htm">
                                                <img src="{{asset('/client')}}/media/default/desktop.png" alt="অনলাইন ব্যাংক অ্যাকাউন্ট হ্যাক করে টাকা হাতিয়ে নেন তিনি" class="lazyload img-responsive">
                                            </a>
                                        </div>

                                    </div>
                                    <div class="content-mobile-right">
                                        <div class="details">
                                            <h3><a href="../../country/news/589435.htm">অনলাইন ব্যাংক অ্যাকাউন্ট হ্যাক করে টাকা হাতিয়ে নেন তিনি</a></h3>
                                        </div>
                                        <div class="meta">
                                            <span class="tags"><a href="../../country.htm">দেশজুড়ে</a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                                <div class="single-block">
                                    <div class="img-mobile-left">
                                        <div class="img-box">
                                            <a href="../../country/news/589435.htm">
                                                <img src="{{asset('/client')}}/media/default/desktop.png" alt="অনলাইন ব্যাংক অ্যাকাউন্ট হ্যাক করে টাকা হাতিয়ে নেন তিনি" class="lazyload img-responsive">
                                            </a>
                                        </div>

                                    </div>
                                    <div class="content-mobile-right">
                                        <div class="details">
                                            <h3><a href="../../country/news/589435.htm">অনলাইন ব্যাংক অ্যাকাউন্ট হ্যাক করে টাকা হাতিয়ে নেন তিনি</a></h3>
                                        </div>
                                        <div class="meta">
                                            <span class="tags"><a href="../../country.htm">দেশজুড়ে</a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                                <div class="single-block">
                                    <div class="img-mobile-left">
                                        <div class="img-box">
                                            <a href="../../country/news/589435.htm">
                                                <img src="{{asset('/client')}}/media/default/desktop.png" alt="অনলাইন ব্যাংক অ্যাকাউন্ট হ্যাক করে টাকা হাতিয়ে নেন তিনি" class="lazyload img-responsive">
                                            </a>
                                        </div>

                                    </div>
                                    <div class="content-mobile-right">
                                        <div class="details">
                                            <h3><a href="../../country/news/589435.htm">অনলাইন ব্যাংক অ্যাকাউন্ট হ্যাক করে টাকা হাতিয়ে নেন তিনি</a></h3>
                                        </div>
                                        <div class="meta">
                                            <span class="tags"><a href="../../country.htm">দেশজুড়ে</a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                                <div class="single-block">
                                    <div class="img-mobile-left">
                                        <div class="img-box">
                                            <a href="../../country/news/589435.htm">
                                                <img src="{{asset('/client')}}/media/default/desktop.png" alt="অনলাইন ব্যাংক অ্যাকাউন্ট হ্যাক করে টাকা হাতিয়ে নেন তিনি" class="lazyload img-responsive">
                                            </a>
                                        </div>

                                    </div>
                                    <div class="content-mobile-right">
                                        <div class="details">
                                            <h3><a href="../../country/news/589435.htm">অনলাইন ব্যাংক অ্যাকাউন্ট হ্যাক করে টাকা হাতিয়ে নেন তিনি</a></h3>
                                        </div>
                                        <div class="meta">
                                            <span class="tags"><a href="../../country.htm">দেশজুড়ে</a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <aside class="col-xs-12 col-sm-12 col-md-4 aside hidden-print">
                    <div>
                        <h2 class="McatTitle"><span class="eee"> সর্বশেষ - শিক্ষা</span></h2>
                        <div class="single-block">
                            <div class="details with-icon">
                                <div class="media">
                                    <div class="media-body">
                                        <h4 class="media-heading">
                                            <a href="589371.htm">
                                                <i class="fa fa-angle-double-right"></i>
                                                ৩২ লাখ শিক্ষার্থী পাবে উপবৃত্তি ও মেধাবৃত্তি
                                            </a>
                                        </h4>
                                    </div>
                                </div><div class="media">
                                    <div class="media-body">
                                        <h4 class="media-heading">
                                            <a href="589354.htm">
                                                <i class="fa fa-angle-double-right"></i>
                                                শিক্ষায় বরাদ্দ বেড়েছে ৫২৮৭ কোটি টাকা
                                            </a>
                                        </h4>
                                    </div>
                                </div><div class="media">
                                    <div class="media-body">
                                        <h4 class="media-heading">
                                            <a href="589179.htm">
                                                <i class="fa fa-angle-double-right"></i>
                                                প্রাথমিক শিক্ষার ১৪৫ জন করোনায় আক্রান্ত
                                            </a>
                                        </h4>
                                    </div>
                                </div><div class="media">
                                    <div class="media-body">
                                        <h4 class="media-heading">
                                            <a href="589171.htm">
                                                <i class="fa fa-angle-double-right"></i>
                                                আজ টিভিতে মাধ্যমিক-কারিগরির ১৩ ক্লাস
                                            </a>
                                        </h4>
                                    </div>
                                </div><div class="media">
                                    <div class="media-body">
                                        <h4 class="media-heading">
                                            <a href="589149.htm">
                                                <i class="fa fa-angle-double-right"></i>
                                                আজ টিভিতে প্রাথমিকের যেসব ক্লাস
                                            </a>
                                        </h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="text-center advertisement">
                        <div class="row">
                            <div class="col-sm-12 paddingBottom20">

                                <div id='div-gpt-ad-1509258458742-12'></div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <h2 class="McatTitle"><span class="eee"> সর্বোচ্চ পঠিত - শিক্ষা </span>
                        </h2>
                        <div class="details-thumb">
                            <div class="thumb-first">
                                <a href="588123.htm">
                                    <img src="{{asset('/client')}}/media/default/desktop.png" alt="করোনায় পেছাচ্ছে বড় পাঁচ পাবলিক পরীক্ষা!" style="width:100%;">
                                </a>
                                <h4>
                                    <a href="588123.htm">করোনায় পেছাচ্ছে বড় পাঁচ পাবলিক পরীক্ষা!</a>
                                </h4>
                            </div>
                            <div class="sub-thumb">
                                <div class="row FlexRow">
                                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 FlexRow">
                                        <div class="small-thumb thumb-border-bottom">
                                            <a href="#">
                                                <img src="{{asset('/client')}}/media/common/placeholder-xs.png" alt="প্রাথমিকের শিক্ষার্থীদের পরীক্ষা নেবেন বাবা-মা" style="width:100%;">
                                            </a>
                                            <h4>
                                                <a href="#">প্রাথমিকের শিক্ষার্থীদের পরীক্ষা নেবেন বাবা-মা</a>
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 FlexRow">
                                        <div class="small-thumb thumb-border-bottom">
                                            <a href="#">
                                                <img src="{{asset('/client')}}/media/common/placeholder-xs.png" alt="প্রাথমিকের শিক্ষার্থীদের পরীক্ষা নেবেন বাবা-মা" style="width:100%;">
                                            </a>
                                            <h4>
                                                <a href="#">প্রাথমিকের শিক্ষার্থীদের পরীক্ষা নেবেন বাবা-মা</a>
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 FlexRow">
                                        <div class="small-thumb thumb-border-bottom">
                                            <a href="#">
                                                <img src="{{asset('/client')}}/media/common/placeholder-xs.png" alt="প্রাথমিকের শিক্ষার্থীদের পরীক্ষা নেবেন বাবা-মা" style="width:100%;">
                                            </a>
                                            <h4>
                                                <a href="#">প্রাথমিকের শিক্ষার্থীদের পরীক্ষা নেবেন বাবা-মা</a>
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 FlexRow">
                                        <div class="small-thumb thumb-border-bottom">
                                            <a href="#">
                                                <img src="{{asset('/client')}}/media/common/placeholder-xs.png" alt="প্রাথমিকের শিক্ষার্থীদের পরীক্ষা নেবেন বাবা-মা" style="width:100%;">
                                            </a>
                                            <h4>
                                                <a href="#">প্রাথমিকের শিক্ষার্থীদের পরীক্ষা নেবেন বাবা-মা</a>
                                            </h4>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="text-center advertisement">
                        <div class="row">
                            <div class="col-sm-12 paddingBottom20">

                                <div id='div-gpt-ad-1536579756321-0'></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="jagoTab2 recommend">

                                <ul class="nav nav-tabs nav-justified" role="tablist">
                                    <li role="presentation" class="active"><a href="589371.htm#tab1" aria-controls="tab1" role="tab" data-toggle="tab" class="cat_more">
                                            আপনার জন্য নির্বাচিত</a></li>
                                </ul>

                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane fade in active" id="tab1">
                                        <ul class="media-list">
                                            <li class="media">
                                                <div class="media-left">
                                                    <a href="589171.htm">
                                                        <img alt="আজ টিভিতে মাধ্যমিক-কারিগরির ১৩ ক্লাস" class="lazyload media-object" src="{{asset('/client')}}/media/common/placeholder-xs.png" data-src="{{asset('/client')}}/media/default/desktop.png">
                                                    </a>
                                                </div>
                                                <div class="media-body">
                                                    <h4 class="media-heading"><a href="589171.htm">আজ টিভিতে মাধ্যমিক-কারিগরির ১৩ ক্লাস</a>
                                                    </h4>
                                                </div>
                                            </li>
                                            <li class="media">
                                                <div class="media-left">
                                                    <a href="589101.htm">
                                                        <img alt="শিক্ষা বাজেটে ‘শুভঙ্করের ফাঁকি’ দেখতে চান না শিক্ষাবিদরা" class="lazyload media-object" src="{{asset('/client')}}/media/common/placeholder-xs.png" data-src="{{asset('/client')}}/media/default/desktop.png">
                                                    </a>
                                                </div>
                                                <div class="media-body">
                                                    <h4 class="media-heading"><a href="589101.htm">শিক্ষা বাজেটে ‘শুভঙ্করের ফাঁকি’ দেখতে চান না শিক্ষাবিদরা</a>
                                                    </h4>
                                                </div>
                                            </li>
                                            <li class="media">
                                                <div class="media-left">
                                                    <a href="588982.htm">
                                                        <img alt="শিক্ষার্থীদের ৬ মাসের টিউশন ফি মওকুফের দাবি" class="lazyload media-object" src="{{asset('/client')}}/media/common/placeholder-xs.png" data-src="{{asset('/client')}}/media/default/desktop.png">
                                                    </a>
                                                </div>
                                                <div class="media-body">
                                                    <h4 class="media-heading"><a href="588982.htm">শিক্ষার্থীদের ৬ মাসের টিউশন ফি মওকুফের দাবি</a>
                                                    </h4>
                                                </div>
                                            </li>
                                            <li class="media">
                                                <div class="media-left">
                                                    <a href="588964.htm">
                                                        <img alt="স্কুল-কলেজের ডিজিটাল হাজিরার তথ্য চেয়েছে মাউশি" class="lazyload media-object" src="media/common/placeholder-xs.png" data-src="{{asset('/client')}}/media/default/desktop.png">
                                                    </a>
                                                </div>
                                                <div class="media-body">
                                                    <h4 class="media-heading"><a href="588964.htm">স্কুল-কলেজের ডিজিটাল হাজিরার তথ্য চেয়েছে মাউশি</a>
                                                    </h4>
                                                </div>
                                            </li>
                                            <li class="media">
                                                <div class="media-left">
                                                    <a href="588876.htm">
                                                        <img alt="বুধবার টিভিতে প্রাথমিকের ৬ বিষয়ের ক্লাস" class="lazyload media-object" src="media/common/placeholder-xs.png" data-src="{{asset('/client')}}/media/default/desktop.png">
                                                    </a>
                                                </div>
                                                <div class="media-body">
                                                    <h4 class="media-heading"><a href="588876.htm">বুধবার টিভিতে প্রাথমিকের ৬ বিষয়ের ক্লাস</a>
                                                    </h4>
                                                </div>
                                            </li>
                                            <li class="media">
                                                <div class="media-left">
                                                    <a href="588513.htm">
                                                        <img alt="ডিপিএস এসটিএস স্কুলের প্রতিবাদ" class="lazyload media-object" src="media/common/placeholder-xs.png" data-src="{{asset('/client')}}/media/default/desktop.png">
                                                    </a>
                                                </div>
                                                <div class="media-body">
                                                    <h4 class="media-heading"><a href="588513.htm">ডিপিএস এসটিএস স্কুলের প্রতিবাদ</a>
                                                    </h4>
                                                </div>
                                            </li>
                                            <li class="media">
                                                <div class="media-left">
                                                    <a href="588498.htm">
                                                        <img alt="শিক্ষাপ্রতিষ্ঠান জাতীয়করণের দাবি স্বাশিপের" class="lazyload media-object" src="media/common/placeholder-xs.png" data-src="{{asset('/client')}}/media/default/desktop.png">
                                                    </a>
                                                </div>
                                                <div class="media-body">
                                                    <h4 class="media-heading"><a href="588498.htm">শিক্ষাপ্রতিষ্ঠান জাতীয়করণের দাবি স্বাশিপের</a>
                                                    </h4>
                                                </div>
                                            </li>
                                            <li class="media">
                                                <div class="media-left">
                                                    <a href="588404.htm">
                                                        <img alt="আজ টিভিতে মাধ্যমিক-কারিগরির ১৩ ক্লাস" class="lazyload media-object" src="media/common/placeholder-xs.png" data-src="{{asset('/client')}}/media/default/desktop.png">
                                                    </a>
                                                </div>
                                                <div class="media-body">
                                                    <h4 class="media-heading"><a href="588404.htm">আজ টিভিতে মাধ্যমিক-কারিগরির ১৩ ক্লাস</a>
                                                    </h4>
                                                </div>
                                            </li>
                                            <li class="media">
                                                <div class="media-left">
                                                    <a href="588381.htm">
                                                        <img alt="টিভিতে ক্ষুদে শিক্ষার্থীদের ছয় বিষয়ের ক্লাস আজ" class="lazyload media-object" src="media/common/placeholder-xs.png" data-src="{{asset('/client')}}/media/default/desktop.png">
                                                    </a>
                                                </div>
                                                <div class="media-body">
                                                    <h4 class="media-heading"><a href="588381.htm">টিভিতে ক্ষুদে শিক্ষার্থীদের ছয় বিষয়ের ক্লাস আজ</a>
                                                    </h4>
                                                </div>
                                            </li>
                                            <li class="media">
                                                <div class="media-left">
                                                    <a href="588123.htm">
                                                        <img alt="করোনায় পেছাচ্ছে বড় পাঁচ পাবলিক পরীক্ষা!" class="lazyload media-object" src="media/common/placeholder-xs.png" data-src="{{asset('/client')}}/media/default/desktop.png">
                                                    </a>
                                                </div>
                                                <div class="media-body">
                                                    <h4 class="media-heading"><a href="588123.htm">করোনায় পেছাচ্ছে বড় পাঁচ পাবলিক পরীক্ষা!</a>
                                                    </h4>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="text-center advertisement hidden-print">

                        <div class="row">
                            <div class="col-sm-12 paddingBottom20">

                                <div id='div-gpt-ad-1509258458742-15' style='margin:auto;'></div>
                            </div>
                        </div>
                    </div>
                </aside>
            </div>
        </div>

    </section>



    @endsection


@section('script')

    @endsection