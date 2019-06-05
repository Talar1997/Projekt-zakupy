<?php

namespace app\controllers;

use app\forms\SecurityAnswerForm;
use core\Logs;
use core\ParamUtils;
use core\Utils;
use core\App;
use core\Validator;

/**
 * Class SecurityAnswerControl
 * @package app\controllers
 */
class SecurityAnswerControl
{
    /**
     * @var SecurityAnswerForm
     */
    public $form;
    /**
     * @var
     */
    public $securityQuestion;
    /**
     * @var
     */
    public $userId;
    /**
     * @var
     */
    public $userMail;

    /**
     * SecurityAnswerControl constructor.
     */
    public function __construct(){
        $this->form = new SecurityAnswerForm();
    }

    /**
     *
     */
    public function getFormParam(){
        $this->userMail = ParamUtils::getFromCleanURL(1);
        $this->form->email = ParamUtils::getFromRequest('email');
        $this->form->security_answer = ParamUtils::getFromRequest('security_answer');
        $this->form->password = ParamUtils::getFromRequest('password');
        $this->form->password_repeat = ParamUtils::getFromRequest('password_repeat');
    }

    /**
     * @return bool
     */
    public function validateData(){
        if( empty($this->userMail) ){
            header("Location: ".App::getConf()->app_url."/restore");
        }

        try{
            $accountData = App::getDB()->get("user",[
                'id',
                'security_question',
                'security_answer'
            ],[
                'email' => $this->userMail
            ]);

            $this->securityQuestion = $accountData['security_question'];
            $this->userId = $accountData['id'];

            if( empty($accountData) ){
                header("Location: ".App::getConf()->app_url."/restore");
            }
        }catch (\PDOException $e){
            Utils::addErrorMessage("Błąd połączenia z bazą danych");
        }

        if(! (isset($this->form->password_repeat) && (isset($this->form->password)))) return false;
        if(! (isset($this->form->security_answer) && (isset($this->form->email)))) return false;

        $securityAnswer = $accountData["security_answer"];

        if(md5($this->form->security_answer) != $securityAnswer){
            Utils::addErrorMessage("Odpowiedź na pytanie bezpieczeństwa jest nieprawidłowa!");
        }

        $v = new Validator();
        $v->validate($this->form->password,[
            'required' => true,
            'required_message' => 'Hasło jest wymagane',
            'regexp' => "/(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{5,}/",
            'validator_message' => 'Hasło powinno mieć conajmniej 5 znaków, jedną literę i jedną liczbę'
        ]);

        $v->validate($this->form->password_repeat,[
            'required' => true,
            'required_message' => 'Hasło jest wymagane'
        ]);

        if($this->form->password_repeat != $this->form->password){
            Utils::addErrorMessage("Hasła nie są identyczne!");
        }

        if(!App::getMessages()->isError()) return true;
        else{
            Logs::addLog("Nieudana próba zmiany hasła: " . $this->form->email);
            return false;
        }
    }

    /**
     *
     */
    public function updatePassword(){
        try{
            App::getDB()->update("user",[
                'password' => md5($this->form->password)
            ],[
                'email' => $this->form->email
            ]);

            Logs::addLog("Udana zmiana hasła: " . $this->form->email);
        }catch(\PDOException $e){
            Utils::addErrorMessage("Błąd połączenia z bazą danych");
        }
    }

    /**
     * @throws \SmartyException
     */
    public function generateView(){
        if($this->validateData()){
            $this->updatePassword();
            Utils::addInfoMessage("Hasło zostało zmienione!");
            header("Location: ".App::getConf()->app_url."/login");
        }
        else{
            App::getSmarty()->assign('page_title','Resetowanie hasła');
            App::getSmarty()->assign('page_description','Resetowanie hasła użytkownika');
            App::getSmarty()->assign("security_question", $this->securityQuestion);
            App::getSmarty()->assign("userId", $this->userId);
            App::getSmarty()->assign("userMail", $this->userMail);
            App::getSmarty()->display('SecurityAnswerView.tpl');
        }
    }

    /**
     * @throws \SmartyException
     */
    public function action_checkAnswer(){
        $this->getFormParam();
        $this->generateView();
    }
}