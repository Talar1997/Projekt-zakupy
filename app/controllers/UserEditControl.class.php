<?php

namespace app\controllers;

use app\forms\UserEditForm;
use core\App;
use core\Logs;
use core\ParamUtils;
use core\SessionUtils;
use core\Utils;
use core\Validator;

/**
 * Class UserEditControl
 * @package app\controllers
 */
class UserEditControl
{
    /**
     * @var UserEditForm
     */
    public $form;
    /**
     * @var
     */
    public $user;

    /**
     * UserEditControl constructor.
     */
    public function __construct()
    {
        $this->form = new UserEditForm();
    }

    /**
     *
     */
    public function getParams(){
        $this->form->id = ParamUtils::getFromPost('id');
        $this->form->login = ParamUtils::getFromPost('login');
        $this->form->password = ParamUtils::getFromPost('password');
        $this->form->security_question = ParamUtils::getFromPost('security_question');
        $this->form->security_answer = ParamUtils::getFromPost('security_answer');
        $this->form->email = ParamUtils::getFromPost('email');
        $this->form->id_role = ParamUtils::getFromPost('id_role');
        $this->form->reputation = ParamUtils::getFromPost('reputation');
        $this->form->description = ParamUtils::getFromPost('description');
    }

    /**
     *
     */
    public function getCurrentUserData(){
        $this->user = App::getDB()->select("user","*",[
            'id' => $this->form->id
        ]);
        $this->user = $this->user[0];
    }

    /**
     * @return bool
     */
    public function validateForm(){
        $v = new Validator();
        $v->validate($this->form->email,[
            'email' => true,
            'trim' => true,
            'required' => true,
            'min_length' => 4,
            'max_length' => 128,
            'required_message' => 'Adres email jest wymagany',
            'validator_message' => "Nieprawidłowy adres email"
        ]);

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
            'regexp' => "/(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{5,}/",
            'validator_message' => 'Hasło powinno mieć conajmniej 5 znaków, jedną literę i jedną liczbę'
        ]);

        $v->validate($this->form->security_question,[
            'required' => true,
            'min_length' => 1,
            'max_length' => 1024,
            'required_message' => 'Pytanie bezpieczeństwa jest wymagane!'
        ]);

        $v->validate($this->form->security_answer,[
            'required' => true,
            'min_length' => 1,
            'max_length' => 256,
            'required_message' => 'Odpowiedź na pytanie bezpieczeństwa jest wymagane!'
        ]);

        $v->validate($this->form->reputation,[
            'required' => true,
            'int' => true,
            'required_message' => 'Odpowiedź na pytanie bezpieczeństwa jest wymagane!',
            'validator_message' => 'Reputacja musi być liczbą całkowitą!'
        ]);

        $this->checkForDuplicates();
        $this->checkIsForbidden();

        if(!App::getMessages()->isError()) return true;
        else return false;
    }

    /**
     * @return bool
     */
    public function checkForDuplicates(){
        //Sprawdzenie, czy login nie występuje u innego użytkownika
        $suspect = App::getDB()->select('user','id',[
            'login' => $this->form->login
        ]);

        foreach($suspect as $s) {
            if($s != $this->form->id){
                Utils::addErrorMessage("Podany login występuje już u innego użytkownika");
                return false;
            }
        }

        //Sprawdzenie czy email nie występuje u innego użytkownika
        $suspect = App::getDB()->select('user','id',[
            'email' => $this->form->email
        ]);

        foreach($suspect as $s) {
            if($s != $this->form->id){
                Utils::addErrorMessage("Podany email występuje już u innego użytkownika");
                return false;
            }
        }

        return true;
    }

    public function checkIsForbidden(){
        if(SessionUtils::loadData('role', true) == 'moderator'){
            if($this->user['id_role'] <= 2){
                Utils::addErrorMessage("Moderator nie może edytować kont innych niż użytkownik i zbanowany!");
                return false;
            }

            if($this->form->id_role <= 2){
                Utils::addErrorMessage("Moderator nie może nadawać uprawnień administratora ani moderatora!");
                return false;
            }
        }

        return true;
    }

    /**
     *
     */
    public function updateUser(){
        //Szyfrowanie haseł, jeśli zmieniły się.
        if($this->form->password != $this->user['password']) $this->form->password = md5($this->form->password);
        if($this->form->security_answer != $this->user['security_answer']) $this->form->security_answer = md5($this->form->security_answer);

        App::getDB()->update('user',[
            'login' => $this->form->login,
            'password' => $this->form->password,
            'security_question' => $this->form->security_question,
            'security_answer' => $this->form->security_answer,
            'email' => $this->form->email,
            'id_role' => $this->form->id_role,
        ],[
            'id' => $this->form->id
        ]);

        App::getDB()->update('user_details',[
            'reputation' => $this->form->reputation,
            'description' => $this->form->description,
        ],[
            'id_details' => $this->form->id
        ]);

        Utils::addInfoMessage("Pomyślnie zmieniono dane użytkownika");
        $login = SessionUtils::loadData('login', true);
        $role = SessionUtils::loadData('role', true);
        Logs::addLog("Edycja użytkownika ".$this->form->id." przez ".$role.": ".$login );
    }

    /**
     *
     */
    public function generateView(){
        if($this->validateForm()) {
            $this->updateUser();
        }
        header("Location: ".App::getConf()->app_url."/manageUsers/0/edit/".$this->form->id);
    }

    /**
     *
     */
    public function action_userEdit(){
        $this->getParams();
        $this->getCurrentUserData();
        $this->generateView();

    }

}