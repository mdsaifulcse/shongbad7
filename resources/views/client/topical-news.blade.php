@extends('client.layouts.master')

@section('title')
    {{\App\Models\Setting::first()->value('company_slogan')}}
@endsection

@section('style')

    @endsection

@section('content')

    <section>
        <div class="container">
            <div class="marginBottom20">
                <h1> <i class="fa fa-tag" style="color:#9a1515;"></i> ময়মনসিংহের খবর</h1>
                <div class="row">
                    <div class="padding15">
                        <div class="custom-social-share">
                            <div class="custom_share_count pull-left"></div>
                            <ul class="social-media custom-social-share">
                                <li><a href="#" rel="nofollow" onclick="if (!window.__cfRLUnblockHandlers) return false; window.open (&quot;https://www.facebook.com/sharer.php?u=https://www.jagonews24.com/topic/ময়মনসিংহ&quot;,&quot;mywindow&quot;,&quot;menubar=1,resizable=1,width=350,height=250&quot;);"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#" rel="nofollow" onclick="if (!window.__cfRLUnblockHandlers) return false; window.open (&quot;https://twitter.com/intent/tweet?text=ময়মনসিংহের খবর&amp;url=https://www.jagonews24.com/topic/ময়মনসিংহ&quot;,&quot;mywindow&quot;,&quot;menubar=1,resizable=1,width=360,height=250&quot;);"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#" rel="nofollow" data-action="share/whatsapp/share" onclick="if (!window.__cfRLUnblockHandlers) return false; window.open (&quot;https://api.whatsapp.com/send?text=https://www.jagonews24.com/topic/ময়মনসিংহ&quot;, &quot;mywindow&quot;,&quot;menubar=1,resizable=1,width=360,height=250&quot;);"><i class="fa fa-whatsapp" style="background: #25D366;"></i></a></li>
                                <li><a href="#" rel="nofollow" onclick="if (!window.__cfRLUnblockHandlers) return false; window.print();"><i class="fa fa-print"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div id="ad">

                    </div>
                    <div class="row">
                        <div class="col-sm-8 main-content">
                            <div class="white-box">
                                <div class="jagoTab2 TagTab">

                                    <ul class="nav nav-tabs nav-justified" role="tablist">
                                        <li role="presentation" class="active"><a href="#news" aria-controls="news" role="tab" data-toggle="tab">খবর </a></li>
                                        <li role="presentation"><a href="#photo" aria-controls="photo" role="tab" data-toggle="tab">ফটো গ্যালারি </a></li>
                                    </ul>

                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane fade in active" id="news">
                                            <div class="tag-block">
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <div class="tag-img">
                                                            <a href="https://www.jagonews24.com/country/news/630855">
                                                                <img alt="ময়মনসিংহে ট্রাকচাপায় অটোরিকশার তিন যাত্রী নিহত" src="https://cdn.jagonews24.com/media/imgAllNew/SM/2019November/road-accident-220170212183933-20201220222955.jpg" class="lazyload img-responsive">
                                                            </a>
                                                            <div class="overlay-category">
                                                                <a href="https://www.jagonews24.com/country" rel="nofollow">দেশজুড়ে</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-8">
                                                        <h3>
                                                            <a href="https://www.jagonews24.com/country/news/630855">ময়মনসিংহে ট্রাকচাপায় অটোরিকশার তিন যাত্রী নিহত</a>
                                                        </h3>
                                                        <small>১০:২৯ পিএম, ২০ ডিসেম্বর ২০২০, রোববার</small>
                                                        <p>ট্রাকচাপায় সিএনজিচালিত অটোরিকশার তিন যাত্রী নিহত হয়েছেন...</p>
                                                    </div>
                                                </div>
                                            </div>


                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="photo">
                                            <div class="tag-photo">
                                                <h3 class="alert alert-danger text-center">কোন তথ্য পাওয়া যায়নি!</h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="text-center paddingBottom20">
                                <button id="load_more_button"><img alt="Loader" src="https://cdn.jagonews24.com/media/common/ajax-loader.gif" class="animation_image" style="width: 30px; display: none;"> আরও পড়ুন</button>
                            </div>
                        </div>

                        <aside class="aside col-sm-4" style="height: auto !important; min-height: 0px !important;">
                            <div class="row paddingBottom20" style="height: auto !important;">
                                <div class="col-sm-12 text-center">
                                    <script async="" src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js" type="text/javascript"></script>


                                </div>
                            </div>
                        </aside>
                    </div>
                </div>
            </div>
        </div>
    </section>

    @endsection


@section('script')

    @endsection