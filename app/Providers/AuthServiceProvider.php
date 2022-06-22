<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;



class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        App\Models\Role::class => App\Policies\RolePolicy::class,
        App\Models\User::class => App\Policies\UserPolicy::class,
        App\Models\SitePartner::class => App\Policies\SitePartnerPolicy::class,
        App\Models\SiteBanner::class => App\Policies\SiteBannerPolicy::class,
        App\Models\SiteSetting::class => App\Policies\SiteSettingPolicy::class,
        App\Models\SiteContact::class => App\Policies\SiteContactPolicy::class,
        App\Models\Version::class => App\Policies\VersionPolicy::class,
        App\Models\ContentCategory::class => App\Policies\ContentCategoryPolicy::class,
        App\Models\Content::class => App\Policies\ContentPolicy::class,
    ];

    /*protected $policies = [
        Post::class => PostPolicy::class,
    ];*/

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();
   
        /*Gate::define('isSuperAdmin', function($user) {
           return $user->role == 'superadmin';
        });
        Gate::define('isAdmin', function($user) {
           return $user->role == 'admin';
        });
        Gate::define('isManager', function($user) {
            return $user->role == 'manager';
        });
        Gate::define('isUser', function($user) {
            return $user->role == 'user';
        });*/
    }
}
