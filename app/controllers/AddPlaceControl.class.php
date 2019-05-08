<?php

namespace app\controllers;

use app\forms\PlaceForm;
use core\App;


/**
 * Class AddPlaceControl
 * @package app\controllers
 */
class AddPlaceControl
{
    /**
     * @var PlaceForm
     */
    public $form;

    /**
     * AddPlaceControl constructor.
     */
    public function __construct()
    {
        $this->form = new PlaceForm();
    }

    /**
     *
     */
    public function getParams(){

    }

    /**
     * @return bool
     */
    public function validatePlace(){
        return false;
    }

    /**
     *
     */
    public function insertToDB(){

    }

    /**
     * @throws \SmartyException
     */
    public function generateView(){
        if($this->validatePlace()){
            //Dodano pomyślnie
            $this->insertToDB();
        }
        else{
            //Błąd walidacji, wygeneru widok
            App::getSmarty()->assign("title", "Dodaj nowe miejsce");
            App::getSmarty()->display("AddPlaceView.tpl");
        }
    }


    /**
     * @throws \SmartyException
     */
    public function action_addPlace(){
        $this->getParams();
        $this->generateView();
    }

}