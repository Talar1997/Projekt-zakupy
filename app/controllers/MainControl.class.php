<?php
namespace app\controllers;

use core\App;

class MainControl
{
    public function action_showMainPage(){
        App::getSmarty()->assign('page_title','Zakupy w niedziele');
        App::getSmarty()->display('MainPageView.tpl');
    }
}