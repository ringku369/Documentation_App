
<header class="header" id="home">
    <nav class="navbar navbar-common">
        <div class="container">
            <a class="navbar-brand" href="#home">
                DP<span>4</span>PM
            </a>
            <button class="navbar-toggler">
                <span class="navbar-icon"></span>
                <span class="navbar-icon"></span>
                <span class="navbar-icon"></span>
            </button>

            <div class="navbar-collapse">
                {{-- <div class="navbar-logo">
                    <img src="{{ asset('site/assets/images/favicon.ico') }}" alt="">
                </div> --}}
                <ul class="navbar-nav">
                    <li><a href="#objective">{{ __('site.menu.Services') }}</a></li>
                    <li><a href="#benefits">{{ __('site.menu.Identity') }}</a></li>
                    <li><a href="http://e-learning.dpg.gov.bd/"  target="_blank">{{ __('site.menu.E-Learning') }}</a></li>
                    <li><a href="#service">{{ __('site.menu.Training') }}</a></li>
                    <li><a href="#service">{{ __('site.menu.Marketplace') }}</a></li>
                    {{-- <li><a href="#">English</a>
                        <ul>
                            <li><a href="#">English</a></li>
                            <li><a href="#">Bangla</a></li>
                            <li><a href="#">Hindi</a></li>
                        </ul>
                    </li> --}}

                    <li>
                        <a href="#">
                         {{ Config::get('languages')[App::getLocale()]['display'] }}
                        </a>

                        <ul>
                            @foreach (Config::get('languages') as $lang => $language)
                                <li>
                                    @if ($lang != App::getLocale())
                                        <a  href="{{ route('lang.switch', $lang) }}">{{$language['display']}}</a>
                                    @endif
                                </li>
                                
                            @endforeach
                        </ul>
                        
                    </li>
                    <li><a href="#">{{ __('site.menu.Join') }}</a></li>
                </ul>
            </div>
        </div>
    </nav>
</header>