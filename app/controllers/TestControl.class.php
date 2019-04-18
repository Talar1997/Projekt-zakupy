<?php
namespace app\controllers;


use core\RoleUtils;
use core\SessionUtils;

class TestControl
{
    public function action_test(){
        echo "Role logged: ".RoleUtils::inRole("logged")."<br/>";
        echo "Role user: ".RoleUtils::inRole("user")."<br/>";
        echo "Role admin: ".RoleUtils::inRole("admin")."<br/>";

        echo "SessionUtills:: id: ".SessionUtils::loadData("id",true)."<br/>";
        echo "SessionUtills:: login: ".SessionUtils::loadData("login",true).'<br/>';
        echo "SessionUtills:: role: ".SessionUtils::loadData("role",true).'<br/>';
    }

}