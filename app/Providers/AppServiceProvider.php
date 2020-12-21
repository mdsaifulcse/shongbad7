<?php

namespace App\Providers;

use App\Models\Category;
use App\Models\Menu;
use Illuminate\Support\ServiceProvider;
use View,MyHelper,Auth;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {

        View::composer(
            [
                'admin.includes.aside',
            ],
            function ($view)
            {

                $menus=Menu::where(['menu_for'=>Menu::ADMIN_MENU,'status'=>Menu::ACTIVE])->orderBy('serial_num','ASC')->get();

                $view->with(['menus'=>$menus]);
            });



        View::composer(
            [
                'client.layouts.partials.header',
            ],
            function ($view)
            {

                $menus=Category::with('subCatAsSubMenu')->orderBy('serial_num','ASC')
                    ->select('category_name','link','id','icon_class')->where('status','=',Category::ACTIVE)->get();

                $allMenus=Category::with('subCatAsSubMenu')->orderBy('serial_num','ASC')
                    ->select('category_name','link','id','icon_class')->where('status','=',Category::OTHER)->get();
                $allMenus=collect($allMenus);

                $view->with(['menus'=>$menus,'allMenus'=>$allMenus]);
            });

    }
}
