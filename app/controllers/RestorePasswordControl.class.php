<?php
namespace app\controllers;

use app\forms\RestorePasswordForm;
use core\App;
use core\ParamUtils;
use core\Utils;
use core\Validator;

class RestorePasswordControl
{
    public $form;
    public $userId;

    public function __construct(){
        $this->form = new RestorePasswordForm();
    }

    public function getFormParam(){
        $this->form->email = ParamUtils::getFromRequest("email");
    }

    public function validateData(){
        if(!$this->form->checkIsNull()) return false;

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

        $this->checkIsExist();

        if(!App::getMessages()->isError()) return true;
        else return false;
    }

    public function checkIsExist(){
        try{
            $this->userId = App::getDB()->get("user","id",[
                'email' => $this->form->email
            ]);

            if(empty($this->userId)) Utils::addErrorMessage("Konto o podanym adresie email nie istnieje");

        }catch (\PDOException $e){
            Utils::addErrorMessage("Błąd połączenia z bazą danych");
        }
    }

    public function generateView(){
        if($this->validateData()){
            header("Location: ".App::getConf()->app_url."/checkAnswer/".$this->form->email);
        }
        else{
            App::getSmarty()->assign('page_title','Resetowanie hasła');
            App::getSmarty()->assign('page_description','Resetowanie hasła użytkownika');
            App::getSmarty()->display('RestorePasswordView.tpl');
        }
    }

    public function action_restore(){
        $this->getFormParam();
        $this->generateView();
    }
}