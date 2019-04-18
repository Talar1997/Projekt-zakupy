<?php

namespace app\controllers;

use app\forms\LoginForm;
use core\ParamUtils;
use core\App;
use core\SessionUtils;
use core\RoleUtils;
use core\Utils;
use core\Validator;

/**
 * Class LoginControl
 * @package app\controllers
 */
class LoginControl
{
    /**
     * @var LoginForm
     */
    public $form;

    /**
     * LoginControl constructor.
     */
    public function __construct(){
        $this->form = new LoginForm();
    }

    /**
     *
     */
    public function getLoginParams(){
        $this->form->login = ParamUtils::getFromRequest("login");
        $this->form->password = ParamUtils::getFromRequest("password");
    }

    /**
     * @return bool
     */
    public function validateLogin(){
        if(!empty(SessionUtils::loadData("id", true))) return true;

        if( !(isset($this->form->login) && isset($this->form->password)) ) return false;

        $v = new Validator();
        $v->validate($this->form->login,[
            'trim' => true,
            'required' => true,
            'required_message' => 'Login jest wymagany',
            'min_length' => 3,
            'max_length' => 32,
            'validator_message' => 'Login powinien zawierać od 3 do 32 znaków'
        ]);

        $v->validate($this->form->password,[
            'required' => true,
            'required_message' => 'Hasło jest wymagane',
        ]);

        if(App::getMessages()->isError()) return false;

        try{
            $accountData = App::getDB()->select("user", [
                'login',
                'id',
                'password',
                'role'
            ],[
                'login' => $this->form->login
            ]);

            if(!empty($accountData[0]["password"]) && md5($this->form->password) == $accountData[0]["password"]){
                SessionUtils::storeData("id", $accountData[0]["id"]);
                SessionUtils::storeData("login", $this->form->login);
                RoleUtils::addRole($accountData[0]["role"]);
                RoleUtils::addRole("logged");
                Utils::addInfoMessage("Logowanie udane!");
                return true;
            }
            else{
                Utils::addErrorMessage("Nieprawidłowy login lub hasło");
            }
        }catch(\PDOException $e){
            Utils::addErrorMessage("Błąd połączenia z bazą danych");
        }

        if(!App::getMessages()->isError()) return true;
        else return false;
    }

    /**
     * @throws \SmartyException
     */
    public function generateView(){
        if($this->validateLogin()){
            header("Location: ".App::getConf()->app_url."/panel");
        }
        else{
            App::getSmarty()->assign('page_title','Zaloguj się');
            App::getSmarty()->assign('page_description','Logowanie do systemu');
            App::getSmarty()->display('SignInView.tpl');
        }
    }

    /**
     * @throws \SmartyException
     */
    public function action_login(){
        $this->getLoginParams();
        $this->generateView();
    }

    /**
     *
     */
    public function action_logout(){
        SessionUtils::remove("id");
        SessionUtils::remove("login");
        header("Location: ".App::getConf()->app_url);
    }
}