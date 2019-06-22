<?php
/**
 * Created by PhpStorm.
 * User: TalarPC
 * Date: 23.06.2019
 * Time: 00:29
 */

namespace app\controllers;


use core\App;
use core\ParamUtils;
use core\Utils;

class SearchHintsControl
{
    public $column;
    public $value;
    public $hints;

    public function getParams(){
        $this->column = ParamUtils::getFromGet("column");
        $this->value= ParamUtils::getFromGet("value");
    }

    public function getFromDb(){
        try{
            $this->hints = App::getDB()->select("markers", $this->column,[
                $this->column.'[~]' => $this->value . '%',
                'LIMIT' => 5
            ]);
        }catch (\PDOException $e){
            Utils::addErrorMessage("Błąd połączenia z bazą danych!");
        }
    }

    public function showHints(){
        foreach($this->hints as $h){
            echo $h;
        }
    }

    public function action_hint(){
        $this->getParams();
        $this->getFromDb();
        $this->showHints();
    }


}