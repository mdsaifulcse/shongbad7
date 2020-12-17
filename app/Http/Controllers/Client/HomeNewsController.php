<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;

class HomeNewsController extends Controller
{
    public function index()
    {

        $menus=Category::with('subCatAsSubMenu')->orderBy('serial_num','ASC')
            ->select('category_name','link','id','icon_class')->where('status','=',Category::ACTIVE)->get();



        $allMenus=Category::with('subCatAsSubMenu')->orderBy('serial_num','ASC')
            ->select('category_name','link','id','icon_class')->where('status','=',Category::OTHER)->get();
        $allMenus=collect($allMenus);



        return view('client.index',compact('menus','allMenus'));
    }


}
