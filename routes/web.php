<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Guest Route
Route::get('lang/{lang}', ['as' => 'lang.switch', 'uses' => 'App\Http\Controllers\Guest\LanguageController@switchLang']);


//Site Route
Route::get('/', ['as'=>'site.home','uses'=>'App\Http\Controllers\Site\SiteAllController@index']);

Route::group(['prefix'=>'pages'], function(){
    Route::get('{slug?}', ['as'=>'site.content','uses'=>'App\Http\Controllers\Site\SiteAllController@content']);
});

// User Auth Part
Auth::routes();
Route::get('/logout', ['middleware'=>'auth:web','as'=>'logout','uses'=>'App\Http\Controllers\Auth\LoginController@logout']);

//Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::group(['middleware'=>'auth', 'prefix'=>'user','as'=>'user.'], function() {    
    Route::get('/dashboard', ['as'=>'dashboard','uses'=>'App\Http\Controllers\User\DashboardController@index']);
});


// this route for user panel not needed
// Route::get('/login',function(){
//     return redirect()->route('admin.login');
// });


// Admin Auth Part

Route::group(['middleware'=>'guest:admin', 'prefix'=>'admin','as'=>'admin.'], function() {    
    
    Route::get('/',function(){
        return redirect()->route('admin.login');
    });
    Route::get('/login', ['as'=>'login','uses'=>'App\Http\Controllers\Admin\AuthController@login']);
    Route::post('/login', ['as'=>'login','uses'=>'App\Http\Controllers\Admin\AuthController@loginStore']);
    
    Route::get('/password/reset', ['as'=>'password.request','uses'=>'App\Http\Controllers\Admin\AuthController@showLinkRequestForm']);
    Route::post('/password/reset', ['as'=>'password.email','uses'=>'App\Http\Controllers\Admin\AuthController@sendResetLinkEmail']);
});
Route::group(['prefix'=>'admin','as'=>'admin.'], function() { 
    Route::post('/logout', ['as'=>'logout','uses'=>'App\Http\Controllers\Admin\AuthController@logout']);
});

Route::group(['middleware'=>'auth:admin', 'prefix'=>'admin','as'=>'admin.'], function() {
    Route::get('/dashboard', ['as'=>'dashboard','uses'=>'App\Http\Controllers\Admin\DashboardController@index']);

    Route::group(['prefix'=>'role-permissions'], function(){
        //Role route
        Route::get('/role', ['as'=>'role','uses'=>'App\Http\Controllers\Admin\RoleController@index'])->middleware('can:read,App\Models\Role');

        Route::get('/role/create', ['as'=>'role.create','uses'=>'App\Http\Controllers\Admin\RoleController@create'])->middleware('can:create,App\Models\Role');

        Route::post('/role/store', ['as'=>'role.store','uses'=>'App\Http\Controllers\Admin\RoleController@store'])->middleware('can:create,App\Models\Role');
        
        Route::get('/role/edit/{id?}', ['as'=>'role.edit','uses'=>'App\Http\Controllers\Admin\RoleController@edit'])->middleware('can:update,App\Models\Role');
        
        Route::put('/role/update/{id?}', ['as'=>'role.update','uses'=>'App\Http\Controllers\Admin\RoleController@update'])->middleware('can:update,App\Models\Role');

        Route::get('/role/delete/{id?}', ['as'=>'role.delete','uses'=>'App\Http\Controllers\Admin\RoleController@delete'])->middleware('can:delete,App\Models\Role');
        Route::get('/role/permission/{id?}', ['as'=>'role.permission','uses'=>'App\Http\Controllers\Admin\RoleController@permission'])->middleware('can:permission_update,App\Models\Role');
        
        Route::put('/role/permission/update/{id?}', ['as'=>'role.permission.update','uses'=>'App\Http\Controllers\Admin\RoleController@permission_update'])->middleware('can:permission_update,App\Models\Role');
        
        //SiteSetting route
        Route::get('/site-setting', ['as'=>'site_setting','uses'=>'App\Http\Controllers\Admin\SiteSettingController@index'])->middleware('can:read,App\Models\SiteSetting');

        Route::get('/site-setting/create', ['as'=>'site_setting.create','uses'=>'App\Http\Controllers\Admin\SiteSettingController@create'])->middleware('can:create,App\Models\SiteSetting');

        Route::post('/site-setting/store', ['as'=>'site_setting.store','uses'=>'App\Http\Controllers\Admin\SiteSettingController@store'])->middleware('can:create,App\Models\SiteSetting');

        Route::get('/site-setting/edit/{id?}', ['as'=>'site_setting.edit','uses'=>'App\Http\Controllers\Admin\SiteSettingController@edit'])->middleware('can:update,App\Models\SiteSetting');

        Route::put('/site-setting/update/{id?}', ['as'=>'site_setting.update','uses'=>'App\Http\Controllers\Admin\SiteSettingController@update'])->middleware('can:update,App\Models\SiteSetting');

        Route::get('/site-setting/delete/{id?}', ['as'=>'site_setting.delete','uses'=>'App\Http\Controllers\Admin\SiteSettingController@delete'])->middleware('can:delete,App\Models\SiteSetting');

        //User route
        Route::get('/user', ['as'=>'user','uses'=>'App\Http\Controllers\Admin\UserController@index'])->middleware('can:read,App\Models\User');
        Route::get('/user-export', ['as'=>'user.export','uses'=>'App\Http\Controllers\Admin\UserController@export']);
        Route::get('/user-pdf', ['as'=>'user.pdf','uses'=>'App\Http\Controllers\Admin\UserController@pdf']);

        Route::get('/user/datatable', ['as'=>'user.datatable','uses'=>'App\Http\Controllers\Admin\UserController@datatable'])->middleware('can:read,App\Models\User');
        
        Route::get('/user/create', ['as'=>'user.create','uses'=>'App\Http\Controllers\Admin\UserController@create'])->middleware('can:create,App\Models\User');

        Route::post('/user/store', ['as'=>'user.store','uses'=>'App\Http\Controllers\Admin\UserController@store'])->middleware('can:create,App\Models\User');

        Route::get('/user/edit/{id?}', ['as'=>'user.edit','uses'=>'App\Http\Controllers\Admin\UserController@edit'])->middleware('can:update,App\Models\User');

        Route::put('/user/update/{id?}', ['as'=>'user.update','uses'=>'App\Http\Controllers\Admin\UserController@update'])->middleware('can:update,App\Models\User');

        Route::get('/user/delete/{id?}', ['as'=>'user.delete','uses'=>'App\Http\Controllers\Admin\UserController@delete'])->middleware('can:delete,App\Models\User');
   
    
    });
    Route::group(['prefix'=>'pages'], function(){
        
        //Version route
        Route::get('/version', ['as'=>'version','uses'=>'App\Http\Controllers\Admin\VersionController@index'])->middleware('can:read,App\Models\Version');

        Route::get('/version/create', ['as'=>'version.create','uses'=>'App\Http\Controllers\Admin\VersionController@create'])->middleware('can:create,App\Models\Version');

        Route::post('/version/store', ['as'=>'version.store','uses'=>'App\Http\Controllers\Admin\VersionController@store'])->middleware('can:create,App\Models\Version');

        Route::get('/version/edit/{id?}', ['as'=>'version.edit','uses'=>'App\Http\Controllers\Admin\VersionController@edit'])->middleware('can:update,App\Models\Version');

        Route::put('/version/update/{id?}', ['as'=>'version.update','uses'=>'App\Http\Controllers\Admin\VersionController@update'])->middleware('can:update,App\Models\Version');

        Route::get('/version/delete/{id?}', ['as'=>'version.delete','uses'=>'App\Http\Controllers\Admin\VersionController@delete'])->middleware('can:delete,App\Models\Version');
        
        
        //ContentCategory route
        Route::get('/content-category', ['as'=>'content_category','uses'=>'App\Http\Controllers\Admin\ContentCategoryController@index'])->middleware('can:read,App\Models\ContentCategory');

        Route::get('/content-category/create', ['as'=>'content_category.create','uses'=>'App\Http\Controllers\Admin\ContentCategoryController@create'])->middleware('can:create,App\Models\ContentCategory');

        Route::post('/content-category/store', ['as'=>'content_category.store','uses'=>'App\Http\Controllers\Admin\ContentCategoryController@store'])->middleware('can:create,App\Models\ContentCategory');

        Route::get('/content-category/edit/{id?}', ['as'=>'content_category.edit','uses'=>'App\Http\Controllers\Admin\ContentCategoryController@edit'])->middleware('can:update,App\Models\ContentCategory');

        Route::put('/content-category/update/{id?}', ['as'=>'content_category.update','uses'=>'App\Http\Controllers\Admin\ContentCategoryController@update'])->middleware('can:update,App\Models\ContentCategory');

        Route::get('/content-category/delete/{id?}', ['as'=>'content_category.delete','uses'=>'App\Http\Controllers\Admin\ContentCategoryController@delete'])->middleware('can:delete,App\Models\ContentCategory');


        //Content route
        Route::get('/content', ['as'=>'content','uses'=>'App\Http\Controllers\Admin\ContentController@index'])->middleware('can:read,App\Models\Content');

        Route::get('/content/create', ['as'=>'content.create','uses'=>'App\Http\Controllers\Admin\ContentController@create'])->middleware('can:create,App\Models\Content');

        Route::post('/content/store', ['as'=>'content.store','uses'=>'App\Http\Controllers\Admin\ContentController@store'])->middleware('can:create,App\Models\Content');

        Route::get('/content/edit/{id?}', ['as'=>'content.edit','uses'=>'App\Http\Controllers\Admin\ContentController@edit'])->middleware('can:update,App\Models\Content');

        Route::put('/content/update/{id?}', ['as'=>'content.update','uses'=>'App\Http\Controllers\Admin\ContentController@update'])->middleware('can:update,App\Models\Content');

        Route::get('/content/delete/{id?}', ['as'=>'content.delete','uses'=>'App\Http\Controllers\Admin\ContentController@delete'])->middleware('can:delete,App\Models\Content');
        
        Route::get('/content/body-details/{id?}', ['as'=>'content.bodyDetails','uses'=>'App\Http\Controllers\Admin\ContentController@bodyDetails'])->middleware('can:create,App\Models\Content');

        Route::post('content-page/image-upload', ['as'=>'contentPage.imageUpload','uses'=>'App\Http\Controllers\Admin\ContentController@imageUpload']);


        //Partner route
        Route::get('/partner', ['as'=>'partner','uses'=>'App\Http\Controllers\Admin\PartnerController@index'])->middleware('can:read,App\Models\SitePartner');

        Route::get('/partner/create', ['as'=>'partner.create','uses'=>'App\Http\Controllers\Admin\PartnerController@create'])->middleware('can:create,App\Models\SitePartner');

        Route::post('/partner/store', ['as'=>'partner.store','uses'=>'App\Http\Controllers\Admin\PartnerController@store'])->middleware('can:create,App\Models\SitePartner');

        Route::get('/partner/edit/{id?}', ['as'=>'partner.edit','uses'=>'App\Http\Controllers\Admin\PartnerController@edit'])->middleware('can:update,App\Models\SitePartner');

        Route::put('/partner/update/{id?}', ['as'=>'partner.update','uses'=>'App\Http\Controllers\Admin\PartnerController@update'])->middleware('can:update,App\Models\SitePartner');

        Route::get('/partner/delete/{id?}', ['as'=>'partner.delete','uses'=>'App\Http\Controllers\Admin\PartnerController@delete'])->middleware('can:delete,App\Models\SitePartner');
        
        //Banner route
        Route::get('/banner', ['as'=>'banner','uses'=>'App\Http\Controllers\Admin\BannerController@index'])->middleware('can:read,App\Models\SiteBanner');

        Route::get('/banner/create', ['as'=>'banner.create','uses'=>'App\Http\Controllers\Admin\BannerController@create'])->middleware('can:create,App\Models\SiteBanner');

        Route::post('/banner/store', ['as'=>'banner.store','uses'=>'App\Http\Controllers\Admin\BannerController@store'])->middleware('can:create,App\Models\SiteBanner');

        Route::get('/banner/edit/{id?}', ['as'=>'banner.edit','uses'=>'App\Http\Controllers\Admin\BannerController@edit'])->middleware('can:update,App\Models\SiteBanner');

        Route::put('/banner/update/{id?}', ['as'=>'banner.update','uses'=>'App\Http\Controllers\Admin\BannerController@update'])->middleware('can:update,App\Models\SiteBanner');

        Route::get('/banner/delete/{id?}', ['as'=>'banner.delete','uses'=>'App\Http\Controllers\Admin\BannerController@delete'])->middleware('can:delete,App\Models\SiteBanner');

        //Contact route
        Route::get('/contact', ['as'=>'contact','uses'=>'App\Http\Controllers\Admin\ContactController@index'])->middleware('can:read,App\Models\SiteContact');

        Route::get('/contact/create', ['as'=>'contact.create','uses'=>'App\Http\Controllers\Admin\ContactController@create'])->middleware('can:create,App\Models\SiteContact');

        Route::post('/contact/store', ['as'=>'contact.store','uses'=>'App\Http\Controllers\Admin\ContactController@store'])->middleware('can:create,App\Models\SiteContact');

        Route::get('/contact/edit/{id?}', ['as'=>'contact.edit','uses'=>'App\Http\Controllers\Admin\ContactController@edit'])->middleware('can:update,App\Models\SiteContact');

        Route::put('/contact/update/{id?}', ['as'=>'contact.update','uses'=>'App\Http\Controllers\Admin\ContactController@update'])->middleware('can:update,App\Models\SiteContact');

        Route::get('/contact/delete/{id?}', ['as'=>'contact.delete','uses'=>'App\Http\Controllers\Admin\ContactController@delete'])->middleware('can:delete,App\Models\SiteContact');
    
    });
});



