<header>

    <!-- mobile menu start -->

    <div id="mySidenav" class="sidenav" style="display: none">
        <div class="inner-header">
            <a href="{{URL::to('/')}}" class="closebtnLeft">
                <img src="{{asset('/client/assets')}}/mobile/media/home-icon.png" alt="">
            </a>
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">x</a>
        </div>
        <ul id="nav" style="display: block">
            @forelse($menus as $key=>$menuData)

                <?php

                $dropDown='';
                $dropDownToggle='';
                $dropDownIcon='';


                if (count($menuData->subCatAsSubMenu)>0){
                    $dropDown='dropdown';
                    $dropDownToggle='dropdown-toggle';
                    $dropDownIcon='fa fa-angle-down';
                    $dropDownMenu='dropdown-menu';
                }
                ?>

            <li class="{{$dropDown}}">

                <a href="{{URL::to($menuData->link)}}">{{$menuData->category_name}} </a>



                <i class="arrowbottom" onclick="openSubMenu({{$key}});"></i>

                <div class="submenu" id="{{$key}}">
                    <h4>
                        <span class="arrow-left" onclick="closeSubMenu({{$key}})">&#10132;</span>
                        <a href="{{URL::to($menuData->link)}}" class="cat-name">{{$menuData->category_name}}</a>
                    </h4>
                    <ul>
                        @forelse($menuData->subCatAsSubMenu as $subMenuData)
                        <li><a href="{{URL::to('/'.$menuData->link.'/'.$subMenuData->link)}}">{{$subMenuData->sub_category_name}}</a></li>

                        @empty

                        @endforelse
                    </ul>
                </div>

            </li>
            @empty

                <li><a href="javascript:;"> No Menu Data !</a></li>

            @endforelse

        </ul>
    </div>

    <div class="visible-header">
        <span class="burger" onclick="openNav()">&#9776;</span>
        <a href="education.htm" class="logo">
            <img src="{{asset('/client')}}/media/common/logo.png" alt="Logo">
        </a>
        <!--<button onclick="openApp()" class="open-app">-->
        <!--OPEN APP-->
        <!--</button>-->
        <span class="search" onclick="openSearch()"></span>
        <form id="searchBox" action="search.htm" method="get">
            <label for="q"></label>
            <input type="text" name="q" inputmode="search" placeholder="অনুসন্ধান..." autofocus>
            <span onclick="closeSearch()">&times;</span>
        </form>
    </div>

    <!-- mobile menu end -->

    <!-- big menu start -->

    <div class="visible-print-block text-center">
        <img alt="Logo" src="{{asset('/client')}}/media/common/logo.png" style="width: 260px;" />
    </div>
    <nav class="logo-date navbar navbar-default no-margin navbar-static-top top hidden-xs" style="z-index:100;display: block;" role="navigation" id="top1">
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <a class="navbar-brand" href="{{URL::to('/')}}"><img alt="Logo" src="{{asset('/client')}}/media/common/logo.png" style="margin-top: -35px;width: 260px;" /></a>
                </div>
                <div class="col-sm-5 text-center hidden-print">
                    <small class="date">
                        <i class="fa fa-map-marker"></i> ঢাকা, শনিবার, ১৩ জুন ২০২০ | ৩০ জ্যৈষ্ঠ ১৪২৭ বঙ্গাব্দ
                    </small>
                </div>
                <div class="col-sm-4 text-right marginTop20 hidden-print">

                    <ul class="social-media">
                        <li><a href="education.htm" target="_blank" title="Facebook" rel="nofollow"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="education.htm" target="_blank" title="Twitter" rel="nofollow"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="education.htm" target="_blank" title="Instagram" rel="nofollow"><i class="fa fa-instagram" style="background: #d6249f;background: radial-gradient(circle at 30% 107%, #fdf497 0%, #fdf497 5%, #fd5949 45%,#d6249f 60%,#285AEB 90%);"></i></a></li>
                        <li><a href="education.htm" target="_blank" title="Youtube" rel="nofollow"><i class="fa fa-youtube" style="background:red!important;"></i></a></li>
                        <li><a href="education.htm" target="_blank" title="Soundcloud" rel="nofollow"><i class="fa fa-soundcloud" style="background:#ff4000!important;"></i></a></li>
                        <li><a href="education.htm" target="_blank" title="Android" rel="nofollow"><i class="fa fa-android"></i></a></li>
                        <li><a href="education.htm" target="_blank" title="iPhone/Mac" rel="nofollow"><i class="fa fa-apple"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
    <nav class="big-menu navbar navbar-default navbar-static-top no-margin hidden-print  hidden-xs" style="z-index:10;display: block;" role="navigation" data-spy="affix" data-offset-top="70" id="menu">
        <div class="container">

            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand visible-xs" href="education.htm"><img alt="Logo" src="{{asset('/client')}}/media/common/logo.png" style="width: 160px;margin-top:-10px;" /></a>
            </div>

            <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                <div class="container" style="position:relative;">
                    <div id="sb-search" class="sb-search">
                        <form class="srch_submit" action="search.htm" method="get" id="cse-search-box" target="_blank">
                            <input type="hidden" name="cx" value="009737550856177646857:g5gonwr4hw8">
                            <input type="hidden" name="cof" value="FORID:10" />
                            <input type="hidden" name="ie" value="utf-8">
                            <div>
                                <input class="sb-search-input srch_submit" onkeyup="buttonUp();" onblur="monkey();" type="text" placeholder="অনুসন্ধান" name="q" id="q" required>
                                <button type="submit" id="sa" name="sa" value=""><i class="fa fa-search"></i></button>
                                <span class="sb-icon-search"><i class="fa fa-search"></i></span>
                            </div>
                        </form>
                    </div>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="{{URL::to('/')}}"><i class="fa fa-home"></i></a></li>
                    {{--<li style="padding-left:15px;">--}}
                        {{--<a href="education.htm">--}}
{{--<span class="intro-banner-vdo-play-btn pinkBg" style="left:-7px!important;top:21px!important">--}}
{{--<span class="ripple pinkBg"></span>--}}
{{--<span class="ripple pinkBg"></span>--}}
{{--<span class="ripple pinkBg"></span>--}}
{{--</span>--}}
                            {{--করোনা লাইভ--}}
                        {{--</a>--}}
                    {{--</li>--}}

                    @forelse($menus as $key=>$menu)

                    <?php

                    $dropDown='';
                    $dropDownToggle='';
                    $dropDownIcon='';


                    if (count($menu->subCatAsSubMenu)>0){
                        $dropDown='dropdown';
                        $dropDownToggle='dropdown-toggle';
                        $dropDownIcon='fa fa-angle-down';
                         $dropDownMenu='dropdown-menu';
                        }
                    ?>


                        <li class="{{$dropDown}}">
                            <a href="{{URL::to($menu->link)}}" class="{{$dropDownToggle}}" data-toggle="{{$dropDown}}">{{$menu->category_name}} <i class="{{$dropDownIcon}}"></i>

                            </a>

                            <ul class="{{$dropDownMenu}}">
                            @forelse($menu->subCatAsSubMenu as $subMenu)

                                <li><a href="{{URL::to('/'.$menu->link.'/'.$subMenu->link)}}">{{$subMenu->sub_category_name}} </a></li>
                                @empty

                                @endforelse
                            </ul>


                        </li>


                    @empty

                        <li><a href="javascript:;"> No Menu Data !</a></li>

                    @endforelse


                    <li class="dropdown mega-dropdown" id="menu-dropdown">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">সকল বিভাগ <i class="fa fa-angle-down"></i></a>
                        <div class="dropdown-menu mega-dropdown-menu" style="max-height:300px;overflow: auto;">
                            <div class="container">
                                <div class="row">


                                    @forelse($allMenus->chunk(4) as $menuValue)

                                        <div class="col-sm-3">
                                    @forelse($menuValue as $key=>$data)
                                        <ul class="">
                                            <li><span class="{{$data->icon_class}}"></span>
                                                <a href="{{URL::to($data->link)}}">{{$data->category_name}}</a>
                                            </li>
                                        </ul>
                                        @empty

                                        @endforelse
                                    </div>

                                    @empty

                                            <div class="col-sm-3">
                                                <ul class="media">
                                                    <li><a href="javascript:;">No Menu Data Found !</a></li>

                                                </ul>
                                            </div>

                                    @endforelse
                                </div>
                            </div>
                        </div>
                    </li>

                </ul>
            </div>
        </div>
    </nav>
    <!-- big menu end -->

</header>