<section class="partners py-5" id="service">
    <div class="container">
        <div class="text-center wow fadeInUp">
            <h2 class="common-heading">{{ __('site.partner.title') }}</h2>
        </div>
        <div class="row justify-content-center wow fadeInUp" data-wow-delay="1s">
            <div class="col-10">
                <div class="partners-slider">
                    {{-- @foreach ($partners as $key => $partner) --}}
                    @foreach ($partners as $partner)
                    <div class="partners-item">
                        <img src="{{asset('storage/'.$partner->thumb)}}" alt="{{$partner->name}} " title="{{$partner->name}} ">
                    </div>
                    @endforeach
{{-- 
                    <div class="partners-item">
                        <img src="{{ asset('site/assets/images/partners/partners-01.png') }}" alt="">
                    </div>
                    <div class="partners-item">
                        <img src="{{ asset('site/assets/images/partners/partners-03.png') }}" alt="">
                    </div>
                    <div class="partners-item">
                        <img src="{{ asset('site/assets/images/partners/partners-02.png') }}" alt="">
                    </div>
                    <div class="partners-item">
                        <img src="{{ asset('site/assets/images/partners/partners-04.png') }}" alt="">
                    </div>
                    <div class="partners-item">
                        <img src="{{ asset('site/assets/images/partners/partners-01.png') }}" alt="">
                    </div>
                    <div class="partners-item">
                        <img src="{{ asset('site/assets/images/partners/partners-03.png') }}" alt="">
                    </div>
                    <div class="partners-item">
                        <img src="{{ asset('site/assets/images/partners/partners-02.png') }}" alt="">
                    </div> --}}
                </div>
            </div>
        </div>
    </div>
</section>