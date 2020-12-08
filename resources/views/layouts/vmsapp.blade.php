<!DOCTYPE html>
<html lang="en">

<!-- begin::Head -->
<head>

    <!--begin::Base Path (base relative path for assets of this page) -->
    <base href="../">

    <!--end::Base Path -->
    <meta charset="utf-8" />
    <title>
    @yield('title')
    </title>
    <meta name="description" content="Updates and statistics">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!--begin::Fonts -->
    <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js"></script>
    <script>
        WebFont.load({
            google: {
                "families": ["Poppins:300,400,500,600,700", "Roboto:300,400,500,600,700"]
            },
            active: function() {
                sessionStorage.fonts = true;
            }
        });
    </script>

    <!--end::Fonts -->



    <!--end:: Global Mandatory Vendors -->

    <link href="{{asset('/')}}/assets/vendors/general/bootstrap-select/dist/css/bootstrap-select.css" rel="stylesheet" type="text/css" />

    <link href="{{asset('/')}}/assets/vendors/general/select2/dist/css/select2.css" rel="stylesheet" type="text/css" />


    <link href="{{asset('/')}}/assets/vendors/general/morris.js/morris.css" rel="stylesheet" type="text/css" />
    <link href="{{asset('/')}}/assets/vendors/general/sweetalert2/dist/sweetalert2.css" rel="stylesheet" type="text/css" />
    <link href="{{asset('/')}}/assets/vendors/general/socicon/css/socicon.css" rel="stylesheet" type="text/css" />
    <link href="{{asset('/')}}/assets/vendors/custom/vendors/line-awesome/css/line-awesome.css" rel="stylesheet" type="text/css" />
    <link href="{{asset('/')}}/assets/vendors/custom/vendors/flaticon/flaticon.css" rel="stylesheet" type="text/css" />
    <link href="{{asset('/')}}/assets/vendors/custom/vendors/flaticon2/flaticon.css" rel="stylesheet" type="text/css" />
    <link href="{{asset('/')}}/assets/vendors/general/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />

    <link rel="stylesheet" href="//cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">

    <!--end:: Global Optional Vendors -->

    <!--begin::Global Theme Styles(used by all pages) -->
    <link href="{{asset('/')}}/assets/css/demo1/style.bundle.css" rel="stylesheet" type="text/css" />

    <!--end::Global Theme Styles -->

    <!--begin::Layout Skins(used by all pages) -->
    <link href="{{asset('/')}}/assets/css/demo1/skins/header/base/light.css" rel="stylesheet" type="text/css" />
    <link href="{{asset('/')}}/assets/css/demo1/skins/header/menu/light.css" rel="stylesheet" type="text/css" />
    <link href="{{asset('/')}}/assets/css/demo1/skins/brand/dark.css" rel="stylesheet" type="text/css" />
    <link href="{{asset('/')}}/assets/css/demo1/skins/aside/dark.css" rel="stylesheet" type="text/css" />

    <link href="{{asset('/')}}/assets/vendors/custom.css" rel="stylesheet" type="text/css" />

    <!--end::Layout Skins -->
    <link rel="shortcut icon" href="{{asset('/')}}/assets/media/logos/favicon.ico" />
</head>

<!-- end::Head -->

<!-- begin::Body -->
<body class="kt-quick-panel--right kt-demo-panel--right kt-offcanvas-panel--right kt-header--fixed kt-header-mobile--fixed kt-subheader--enabled kt-subheader--fixed kt-subheader--solid kt-aside--enabled kt-aside--fixed kt-page--loading">

<!-- begin:: Page -->

<!-- begin:: Header Mobile -->
<div id="kt_header_mobile" class="kt-header-mobile  kt-header-mobile--fixed ">
    <div class="kt-header-mobile__logo">
        <a href="demo1/index.html">
            <img alt="Logo" src="{{asset('/')}}/assets/media/logos/logo-light.png" />
        </a>
    </div>
    <div class="kt-header-mobile__toolbar">
        <button class="kt-header-mobile__toggler kt-header-mobile__toggler--left" id="kt_aside_mobile_toggler"><span></span></button>
        <button class="kt-header-mobile__toggler" id="kt_header_mobile_toggler"><span></span></button>
        <button class="kt-header-mobile__topbar-toggler" id="kt_header_mobile_topbar_toggler"><i class="flaticon-more"></i></button>
    </div>
</div>

<!-- end:: Header Mobile -->

<div class="kt-grid kt-grid--hor kt-grid--root">
    <div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--ver kt-page">

        <!-- begin:: Aside -->
        <button class="kt-aside-close " id="kt_aside_close_btn"><i class="la la-close"></i></button>

        @include('admin.includes.aside')

        <!-- end:: Aside -->


        <div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor kt-wrapper" id="kt_wrapper">


            <!-- begin:: Header -->

            @include('admin.includes.header')

            @include('include.alerts')

            <!-- end:: Header -->


            <!-- begin:: Content Head -->

            @include('admin.includes.content-header')

            <!-- end:: Content Head -->


            <!-- begin:: content -->
            @yield('content')
            <!-- end:: content -->


            <!-- begin:: Footer -->

            @include('admin.includes.footer')

            <!-- end:: Footer -->
        </div>
    </div>
</div>

<!-- end:: Page -->

<!-- begin::Quick Panel -->

<!-- end::Quick Panel -->

<!-- begin::Scrolltop -->
<div id="kt_scrolltop" class="kt-scrolltop">
    <i class="fa fa-arrow-up"></i>
</div>

<!-- end::Scrolltop -->

<!-- begin::Sticky Toolbar -->
<ul class="kt-sticky-toolbar" style="margin-top: 30px;">

    <li class="kt-sticky-toolbar__item kt-sticky-toolbar__item--brand" data-toggle="kt-tooltip" title="Layout Builder" data-placement="left">
        <a href="#"><i class="flaticon2-gear"></i></a>
    </li>

</ul>

<!-- end::Sticky Toolbar -->

<!-- begin::Demo Panel -->

<!-- end::Demo Panel -->


<!-- begin::Global Config(global config for global JS sciprts) -->
<script>
    var KTAppOptions = {
        "colors": {
            "state": {
                "brand": "#5d78ff",
                "dark": "#282a3c",
                "light": "#ffffff",
                "primary": "#5867dd",
                "success": "#34bfa3",
                "info": "#36a3f7",
                "warning": "#ffb822",
                "danger": "#fd3995"
            },
            "base": {
                "label": ["#c5cbe3", "#a1a8c3", "#3d4465", "#3e4466"],
                "shape": ["#f0f3ff", "#d9dffa", "#afb4d4", "#646c9a"]
            }
        }
    };
</script>

<!-- end::Global Config -->

<!--begin:: Global Mandatory Vendors -->
<script src="{{asset('/')}}/assets/vendors/general/jquery/dist/jquery.js" type="text/javascript"></script>
<script src="{{asset('/')}}/assets/vendors/general/popper.js/dist/umd/popper.js" type="text/javascript"></script>
<script src="{{asset('/')}}/assets/vendors/general/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
<script src="{{asset('/')}}/assets/vendors/general/js-cookie/src/js.cookie.js" type="text/javascript"></script>
<script src="{{asset('/')}}/assets/vendors/general/perfect-scrollbar/dist/perfect-scrollbar.js" type="text/javascript"></script>
<script src="{{asset('/')}}/assets/vendors/general/sticky-js/dist/sticky.min.js" type="text/javascript"></script>

<!--end:: Global Mandatory Vendors -->

<script src="{{asset('/')}}/assets/vendors/custom/vendors/bootstrap-multiselectsplitter/bootstrap-multiselectsplitter.min.js" type="text/javascript"></script>
<script src="{{asset('/')}}/assets/vendors/general/select2/dist/js/select2.full.js" type="text/javascript"></script>






<script src="{{asset('/')}}/assets/vendors/general/chart.js/dist/Chart.bundle.js" type="text/javascript"></script>
<script src="{{asset('/')}}/assets/vendors/general/sweetalert2/dist/sweetalert2.min.js" type="text/javascript"></script>

<script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

<!--end:: Global Optional Vendors -->

<!--begin::Global Theme Bundle(used by all pages) -->
<script src="{{asset('/')}}/assets/js/demo1/scripts.bundle.js" type="text/javascript"></script>

<!--end::Global Theme Bundle -->

<script src="//maps.google.com/maps/api/js?key=AIzaSyBTGnKT7dt597vo9QgeQ7BFhvSRP4eiMSM" type="text/javascript"></script>
<script src="{{asset('/')}}/assets/vendors/custom/gmaps/gmaps.js" type="text/javascript"></script>

<!--end::Page Vendors -->

<!--begin::Page Scripts(used by this page) -->
<script src="{{asset('/')}}/assets/js/demo1/pages/dashboard.js" type="text/javascript"></script>
<script src="{{asset('/')}}/assets/js/demo1/pages/crud/forms/widgets/select2.js" type="text/javascript"></script>


@if(Session::has('success'))
    <script type="text/javascript">
        swal.fire({
            type: 'success',
            title: '{{Session::get("success")}}',
            showConfirmButton: true,
            timer: 2000
        })
    </script>
  @endif

  @if(Session::has('error'))
    <script type="text/javascript">
        swal.fire({
            type: 'error',
            title: '{{Session::get("error")}}',
            showConfirmButton: true
        })
    </script>
  @endif

<script type="text/javascript">

    function deleteConfirm(id){
            swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!'
            }).then((result) => {
                if (result.value) {
                $("#"+id).submit();
            }
        })
        }

      

      //  Student Activation Warning -------------
      function activationConfirm(id){
          swal.fire({
              title: 'Are you sure?',
              text: "You won't be able to revert this!",
              type: 'warning',
              showCancelButton: true,
              confirmButtonColor: '#3085d6',
              cancelButtonColor: '#d33',
              confirmButtonText: 'Yes, active  ist!'
          }).then((result) => {
              if (result.value) {
              $("#"+id).submit();
          }
      })
      }

  </script>

@yield('script')

<!--end::Page Scripts -->
</body>

<!-- end::Body -->
</html>