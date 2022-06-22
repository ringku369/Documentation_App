
<style>
  .profile-img-size-50 {
    width: 40px;
    margin-top: -10px;
    border: 3px solid #f4f6f9;
}
</style>  

  <li class="nav-item dropdown">
    <a class="nav-link" data-toggle="dropdown" href="#">
      {{-- <i class="far fa-user"></i>
      <span class="badge badge-danger navbar-badge">3</span> --}}
      
      @if (Auth::user('admin')->thumb)
        <img src="{{asset('storage/'.Auth::user('admin')->thumb)}}" alt="User Avatar" class="profile-img-size-50 mr-3 img-circle">   
      @elseif(Auth::user()->thumb)
        <img src="{{asset('storage/'.Auth::user()->thumb)}}" alt="User Avatar" class="profile-img-size-50 mr-3 img-circle">    
      @else
        <img src="{{ asset('assets/dist/img/avatar.png') }}" alt="User Avatar" class="profile-img-size-50 mr-3 img-circle"> 
      @endif
      
    </a>
    
    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
      <a href="#" class="dropdown-item">
        <div class="media">
          
          <div class="media-body">
            <p class="text-dark" style="margin: 4% 6%; border-bottom: 1px solid;">
              <span><i class="fab fa-critical-role"></i></span>
              <span>{{strtoupper(Auth::user('admin')->role->name)}}</span>
            </p>
            <p class="text-info"><i style="margin-top: 4px; margin-right: 30px;" class="far fa-user"></i>{{ Auth::user('admin')->name}} </p>
          </div>
        </div>
      </a>
      <div class="dropdown-divider"></div>
      

      <a style="background: #f4f6f9;" class="dropdown-item dropdown-footer" href="{{ route('admin.logout') }}"
                                    onclick="event.preventDefault();
                                                  document.getElementById('admin-logout-form').submit();">
                                    {{ __('admin.menu.logout') }}
                                </a>

      <form id="admin-logout-form" action="{{ route('admin.logout') }}" method="POST" class="d-none">
          @csrf
      </form>
    </div>
  </li>

  {{-- <li class="nav-item dropdown" style="font-weight: bolder;">
    <a class="nav-link" data-toggle="dropdown" href="#">
      {{ Config::get('languages')[App::getLocale()]['display'] }}
    </a>
    <div class="dropdown-menu" style="border:none">
      @foreach (Config::get('languages') as $lang => $language)  
        @if ($lang != App::getLocale())
          <a style="padding : 0% 35%" href="{{ route('lang.switch', $lang) }}">
            {{$language['display']}}
          </a>
          <div class="dropdown-divider"></div>
        @endif
      @endforeach
    </div>
  </li> --}}

  <li class="nav-item dropdown" style="font-weight: bolder;">
    <a style="background: #f4f6f9;font-weight: bolder;color: tomato;" class="dropdown-item dropdown-footer" href="{{ route('admin.logout') }}"
                                    onclick="event.preventDefault();
                                                  document.getElementById('admin-logout-form').submit();">
                                    {{ __('admin.menu.logout') }}
                                </a>
  </li>

  {{--  <li class="nav-item dropdown">
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
  </li>  --}}