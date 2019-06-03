<?php
/**
 * Created by PhpStorm.
 * User: talar
 * Date: 2019-06-03
 * Time: 11:41
 */

namespace app\controllers;


use core\App;
use core\ParamUtils;
use core\SessionUtils;
use core\Utils;
use core\Validator;

class ProfileControl
{
    public $id;
    public $userData;

    public function getUserFromDb($id){
        $this->user = App::getDB()->select("user", [
            "[>]role" => ["id_role" => "id_role"],
            "[>]user_details" => ["id" => "id_details"]
        ],[
            'user.id',
            'user.login',
            'user.email',
            'user_details.description',
            'user_details.reputation',
            'user.id_role',
            'role.name',
            'user_details.last_login',
            'user_details.register_date',
            'user_details.avatar_ref'
        ],[
            'user.id' => $id
        ]);

        return $this->user[0];
    }

    public function generateView(){
        $this->userData = $this->getUserFromDb($this->id);
        App::getSmarty()->assign("profile", $this->userData);
        App::getSmarty()->assign("page_title", "Profil użytkownika");
        App::getSmarty()->display("ProfileView.tpl");
    }

    public function validate(){
        $v = new Validator();
        $v->validate($this->id,[
            'numeric' => true,
            'int' => true,
            'validator_message' => 'Nieprawidłowy parametr!',
        ]);

        $isExist = App::getDB()->count("user", "id", [
            'id' => $this->id
        ]);

        if($isExist != 1){
            Utils::addErrorMessage("Użytkownik o podanym id nie istnieje!");
        }

        if(App::getMessages()->isError()) return false;
        else return true;
    }

    public function action_profile(){
        $this->id = ParamUtils::getFromCleanURL(1);
        if(empty($this->id) || $this->id < 0) $this->id = SessionUtils::loadData("id", true);

        if(!$this->validate()){
            $this->id = SessionUtils::loadData("id", true);
        }

        $this->generateView();

    }
}