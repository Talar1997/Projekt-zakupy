<?php
namespace app\forms;


class RestorePasswordForm
{
    public $email;
    function checkIsNull() {
        foreach ($this as $key => $value) {
            if(!isset($value)) return false;
            else return true;
        }
    }
}