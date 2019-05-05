<?php
namespace app\controllers;

use core\App;
use core\RoleUtils;
use core\SessionUtils;

class TestControl
{
    public function action_test(){
        $data["RoleisLogged"] = RoleUtils::inRole("logged");
        $data["RoleisUser"] = RoleUtils::inRole("user");
        $data["RoleisAdmin"] = RoleUtils::inRole("admin");
        $data["SessionId"] = SessionUtils::loadData("id",true);
        $data["SessionLogin"] = SessionUtils::loadData("login",true);
        $data["SessionRole"] = SessionUtils::loadData("role",true);
        $data["lat"] = 50.288740;
        $data["lng"] = 19.129940;

        App::getSmarty()->assign('data', $data);
        App::getSmarty()->assign('page_title','Debugger');
        App::getSmarty()->assign('page_description','Debugger');
        App::getSmarty()->display('TestView.tpl');
    }

}