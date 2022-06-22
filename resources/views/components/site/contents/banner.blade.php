<section class="banner">
    <div class="banner-slider">
        @foreach ($banners as $banners)
        <div class="banner-item">
            <img src="{{asset('storage/'.$banners->thumb)}}" alt="{{$banners->name}} " title="{{$banners->name}} ">
        </div>
        @endforeach
    </div>
    <div class="container">
        <div class="row">
            <div class="col-7 wow fadeInUp">
                <h1 class="split-last-word">{{ __('site.banner.title') }}</h1>
            </div>
        </div>
    </div>
</section>