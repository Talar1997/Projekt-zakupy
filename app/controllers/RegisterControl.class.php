<?php

namespace app\controllers;

use app\forms\RegisterForm;
use core\ParamUtils;
use core\App;

class RegisterControl
{
    public $form;

    public function __construct(){
        $this->form = new RegisterForm();
    }

    public function getFormParams(){
        $this->form->email = ParamUtils::getFromRequest("email");
        $this->form->login = ParamUtils::getFromRequest("login");
        $this->form->password = ParamUtils::getFromRequest("password");
        $this->form->security_question = ParamUtils::getFromRequest("security_question");
        $this->form->security_answer = ParamUtils::getFromRequest("security_answer");
    }

    public function validateForm(){

    }

    public function insertToDb(){

    }

    public function generateView(){
        if($this->validateForm()){
            //sukces, dodaj rekord do bazy i wygeneruj widok
        }
        else{
            //blad, niech user poprawi formularz
        }
    }

    public function action_register(){
        $this->getFormParams();
        $this->generateView();
    }
}