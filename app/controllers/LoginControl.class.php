<?php

namespace app\controllers;

use app\transfer\User;
use app\forms\LoginData;

class LoginControl
{
    public function __construct(){
        $this->form = new LoginData();
    }

    public function getLoginParams(){
        $this->form->login = getFromRequest('login');
        $this->form->password = getFromRequest('password');
    }

    public function validateLogin(){
        if( !(isset($this->form->login) && isset($this->form->password)) ){
            return false;
        }

        if( $this->form->login == "" ) getMessages()->addError("Nie wprowadzono loginu!");
        if( $this->form->password == "" ) getMessages()->addError("Nie wprowadzono hasła!");

        if(getMessages()->isError()) return false;

        if($this->form->login == "admin" && $this->form->password == "admin"){
            $user = new User($this->form->login, 'admin');
            $_SESSION['user'] = serialize($user);
            addRole($user->role);
            setcookie("login", $this->form->login);
            return true;
        }
        else if($this->form->login == "user" && $this->form->password == "user"){
            $user = new User($this->form->login, 'user');
            $_SESSION['user'] = serialize($user);
            setcookie("login", $this->form->login);
            addRole($user->role);
            return true;
        }
        else{
            getMessages()->addError("Nieprawidłowy login lub hasło");
            return false;
        }
    }

    public function generateView(){
        if($this->validateLogin()){
            getMessages()->addNotice("Logowanie udane!");
            header("Location: ".getConf()->app_root.'/ctrl.php?action=generateId');
        }
        else{
            getSmarty()->assign('page_title','Logowanie nieudane');
            getSmarty()->assign('page_description','Logowanie do systemu');
            getSmarty()->assign('msgs', getMessages());
            getSmarty()->display('SignInView.tpl');
        }
    }

    public function action_login(){
        $this->getLoginParams();
        $this->generateView();
    }

    public function action_logout(){
        session_destroy();
        unset($_COOKIE["login"]);
        header("Location: ".getConf()->app_url);
    }
}