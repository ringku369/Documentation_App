<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>@yield('title', @$sitesetting->name)</title>

  @if ($sitesetting->favicon)
  <link href="{{ asset('storage/'.$sitesetting->favicon) }}" type="image/x-icon" rel="shortcut icon" />    
  @else
  <link href="{{ asset('site/assets/images/favicon.png') }}" type="image/x-icon" rel="shortcut icon" />
  @endif



  <!-- Styles -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <link rel="stylesheet" href="{{ asset('assets/plugins/fontawesome-free/css/all.min.css') }}">

  <link rel="stylesheet" type="text/css" 
     href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">


  <link rel="stylesheet" href="{{ asset('assets/dist/css/adminlte.min.css') }}">

  <style>
    .btn-add-new {
      background: #9ab1b5;
      border: 1px solid #c5c0c0;
      margin-top: -3px;
      font-weight: bolder;
    }
  
    .save{
      background: #9ab1b5;
      border: 1px solid #c5c0c0;
      font-weight: bolder;
    }

    /* over ride for style logo */
    .img-circle {
      border-radius: 0;
    }

    .elevation-3 {
      box-shadow: 0 10px 20px rgba(0,0,0,0),0 0px 0px rgba(0,0,0,.23)!important;
    }
    /* over ride for style logo */
  </style>

  @yield('styles')
  
</head>




<body class="sidebar-mini control-sidebar-slide-open layout-footer-fixed layout-navbar-fixed layout-fixed">
<div class="wrapper">
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    
      @yield('breadcrumb')

      <!-- Right navbar links -->
      <ul class="navbar-nav ml-auto">
          {{-- @include('admin.layouts.partials.searchtopnav') --}}
          {{-- @include('admin.layouts.partials.messagedropdownmenu') --}}
          @include('admin.layouts.partials.profiledropdownmenu')
          {{-- @include('admin.layouts.partials.notificationdropdownmenu') --}}
      </ul>
  </nav>

  <!-- Main Sidebar Container -->
  @include('admin.layouts.partials.leftsidebar')


  @yield('content')


  @include('admin.layouts.partials.footer')
</div>


<!-- ./wrapper -->




<!-- REQUIRED SCRIPTS -->
{{-- @include('admin.layouts.partials.scripts') --}}
<!-- jQuery -->
<script src="{{ asset('assets/plugins/jquery/jquery.min.js') }}"></script>
<!-- Bootstrap 4 -->
<script src="{{ asset('assets/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
<!-- AdminLTE App -->
<script src="{{ asset('assets/dist/js/adminlte.min.js') }}"></script>
{{-- <script src="{{ asset('assets/dist/js/demo.js') }}"></script> --}}
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>

<script>
  @if(Session::has('message'))
  toastr.options =
  {
  	"closeButton" : true,
  	"progressBar" : true
  }
  		toastr.success("{{ session('message') }}");
  @endif

  @if(Session::has('error'))
  toastr.options =
  {
  	"closeButton" : true,
  	"progressBar" : true
  }
  		toastr.error("{{ session('error') }}");
  @endif

  @if(Session::has('info'))
  toastr.options =
  {
  	"closeButton" : true,
  	"progressBar" : true
  }
  		toastr.info("{{ session('info') }}");
  @endif

  @if(Session::has('warning'))
  toastr.options =
  {
  	"closeButton" : true,
  	"progressBar" : true
  }
  		toastr.warning("{{ session('warning') }}");
  @endif
</script>
<script>
  $(document).ready(function () {
    $('li.has-child').children('ul').each(function () { 
      //let tagName = $(this).prop('tagName');
      let li = $(this).children('li').length;
      if(li == 0){
        $(this).parent().hide();
      }
    });
  });
</script>

@yield('scripts')

</body>
</html>
