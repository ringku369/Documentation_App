<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    
    <a href="{{route('admin.dashboard')}}" class="brand-link">
      <img src="{{ ($sitesetting->logo) ?  asset('storage/'.$sitesetting->logo) : asset('site/assets/images/logo.png') }}" alt="{{($sitesetting->name)?$sitesetting->name:__('admin.menu.site_short') }}" class="brand-image img-circle elevation-3" style="opacity:1">
      {{-- <span class="brand-text font-weight-light" style="font-weight: bold!important;">{{($sitesetting->name)?$sitesetting->name:__('admin.menu.site_short') }}</span>  --}}
    </a>

    

    <!-- Sidebar -->
    <div class="sidebar">

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          
          <li class="nav-item">
            <a href="{{route('admin.dashboard')}}" class="nav-link {{$retVal = (Route::current()->getName() == 'admin.dashboard') ? 'active' : '' ;}}">
              <i class="nav-icon fas fa-th"></i>
              <p>
                {{__('admin.menu.dashboard')}}
              </p>
            </a>
          </li>
        
          <li class="nav-item has-child {{$retVal = (request()->route()->getPrefix() == 'admin/role-permissions') ? 'menu-open' : ''}}">
            <a href="#" class="nav-link">
              <i class="fab fa-critical-role"></i>
              <p>
                {{__('admin.menu.role_parent')}}
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              @can('parent', app('App\Models\Role'))
              <li class="nav-item">
                <a href="{{route('admin.role')}}" class="nav-link {{$retVal = (Route::current()->getName() == 'admin.role') ? 'active' : '' ;}}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{__('admin.menu.role')}} </p>
                </a>
              </li>
              @endcan

              @can('parent', app('App\Models\SiteSetting'))
              <li class="nav-item">
                <a href="{{route('admin.site_setting')}}" class="nav-link {{$retVal = (Route::current()->getName() == 'admin.site_setting') ? 'active' : '' ;}}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{__('admin.menu.site_setting')}} </p>
                </a>
              </li>
              @endcan

              @can('parent', app('App\Models\User'))
              <li class="nav-item">
                <a href="{{route('admin.user')}}" class="nav-link {{$retVal = (Route::current()->getName() == 'admin.user') ? 'active' : '' ;}}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{__('admin.menu.user')}} </p>
                </a>
              </li>
              @endcan
            </ul>
          </li>
        
          

          <li class="nav-item has-child {{$retVal = (request()->route()->getPrefix() == 'admin/pages') ? 'menu-open' : ''}}">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-book"></i>
              <p>
                {{__('admin.menu.page_parent')}}
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              @can('parent', app('App\Models\ContentCategory'))
              <li class="nav-item">
                <a href="{{route('admin.content_category')}}" class="nav-link {{$retVal = (Route::current()->getName() == 'admin.content_category') ? 'active' : '' ;}}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{__('admin.menu.content_category')}} </p>
                </a>
              </li>
              @endcan
              
              @can('parent', app('App\Models\Version'))
              <li class="nav-item">
                <a href="{{route('admin.version')}}" class="nav-link {{$retVal = (Route::current()->getName() == 'admin.version') ? 'active' : '' ;}}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{__('admin.menu.version')}} </p>
                </a>
              </li>
              @endcan

              @can('parent', app('App\Models\Content'))
              <li class="nav-item">
                <a href="{{route('admin.content')}}" class="nav-link {{$retVal = (Route::current()->getName() == 'admin.content') ? 'active' : '' ;}}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{__('admin.menu.content')}} </p>
                </a>
              </li>
              @endcan

              



              {{-- @can('parent', app('App\Models\SitePartner'))
              <li class="nav-item">
                <a href="{{route('admin.partner')}}" class="nav-link {{$retVal = (Route::current()->getName() == 'admin.partner') ? 'active' : '' ;}}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{__('admin.menu.partner')}} </p>
                </a>
              </li>
              @endcan
              @can('parent', app('App\Models\SiteBanner'))
              <li class="nav-item">
                <a href="{{route('admin.banner')}}" class="nav-link {{$retVal = (Route::current()->getName() == 'admin.banner') ? 'active' : '' ;}}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{__('admin.menu.banner')}} </p>
                </a>
              </li>
              @endcan

              @can('parent', app('App\Models\SiteContact'))
              <li class="nav-item">
                <a href="{{route('admin.contact')}}" class="nav-link {{$retVal = (Route::current()->getName() == 'admin.contact') ? 'active' : '' ;}}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>{{__('admin.menu.contact')}} </p>
                </a>
              </li>
              @endcan --}}
              
            </ul>
          </li>

        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>