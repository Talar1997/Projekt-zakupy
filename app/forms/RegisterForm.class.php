<?php

namespace app\forms;

class RegisterForm
{
    public $email;
    public $login;
    public $password;
    public $password_repeat;
    public $security_question;
    public $security_answer;

    function checkIsNull() {
        foreach ($this as $key => $value) {
            if(!isset($value)) return false;
            else return true;
        }
    }
}