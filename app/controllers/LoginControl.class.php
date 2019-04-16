<?php

namespace app\controllers;

use app\forms\LoginForm;
use core\Message;
use core\ParamUtils;
use core\App;
use core\SessionUtils;
use core\RoleUtils;

class LoginControl
{
    public $form;

    public function __construct(){
        $this->form = new LoginForm();
    }

    public function getLoginParams(){
        $this->form->login = ParamUtils::getFromRequest("login");
        $this->form->password = ParamUtils::getFromRequest("password");
    }

    public function validateLogin(){
        if(!is_null(SessionUtils::loadData("id"))) return true;

        if( !(isset($this->form->login) && isset($this->form->password)) ){
            return false;
        }

        if( $this->form->login == "" ) App::getMessages()->addMessage(new Message("Nie wprowadzono loginu!", Message::ERROR));
        if( $this->form->password == "" ) App::getMessages()->addMessage(new Message("Nie wprowadzono hasła!", Message::ERROR));

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
                return true;
            }
            else{
                App::getMessages()->addMessage(new Message("Nieprawidłowy login lub hasło", Message::ERROR));
                return false;
            }
        }catch(\PDOException $e){
            App::getMessages()->addMessage(new Message("Błąd połączenia z bazą danych", Message::ERROR));
            return false;
        }
    }

    public function generateView(){
        if($this->validateLogin()){
            App::getMessages()->addMessage(new Message("Logowanie udane!", Message::INFO));
            header("Location: ".App::getConf()->app_url);
        }
        else{
            App::getSmarty()->assign('page_title','Zaloguj się');
            App::getSmarty()->assign('page_description','Logowanie do systemu');
            App::getSmarty()->display('SignInView.tpl');
        }
    }

    public function action_login(){
        $this->getLoginParams();
        $this->generateView();
    }

    public function action_logout(){
        SessionUtils::remove("id");
        SessionUtils::remove("login");
        header("Location: ".App::getConf()->app_url);
    }
}