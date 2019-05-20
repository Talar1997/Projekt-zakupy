<?php
namespace app\controllers;

use core\App;
use core\RoleUtils;
use core\SessionUtils;

/**
 * Class TestControl
 * @package app\controllers
 */
class TestControl
{
    /**
     * @throws \SmartyException
     */
    public function action_test(){
        $data["RoleisLogged"] = RoleUtils::inRole("logged");
        $data["RoleisUser"] = RoleUtils::inRole("user");
        $data["RoleisAdmin"] = RoleUtils::inRole("admin");
        $data["SessionId"] = SessionUtils::loadData("id",true);
        $data["SessionLogin"] = SessionUtils::loadData("login",true);
        $data["SessionRole"] = SessionUtils::loadData("role",true);
        $data["lat"] = 50.288740;
        $data["lng"] = 19.129940;

            $accountData = App::getDB()->select("user", [
                "[>]role" => ["id_role" => "id_role"],
                "[>]user_details" => ["id" => "id_details"]
            ],[
                'user.id',
                'user.login',
                'user.password',
                'user.security_question',
                'user.security_answer',
                'user.email',
                'user_details.description',
                'user_details.reputation',
                'user.id_role',
                'role.name',
            ]);

        $data += $accountData[0];

        App::getSmarty()->assign('data', $data);
        App::getSmarty()->assign('page_title','Debugger');
        App::getSmarty()->assign('page_description','Debugger');
        App::getSmarty()->display('TestView.tpl');

        /*$d = (new \DateTime())->format('Y-m-d H:i:s');
        for($i = 1; $i < 100; $i++){
            echo "('$i', 'default.jpg', '$i', 'Lorem ipsum', '$d', '$d'), <br/>";
        }*/
    }

}