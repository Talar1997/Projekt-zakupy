<?php

namespace app\controllers;

use app\forms\PlaceForm;
use core\App;
use core\ParamUtils;
use core\SessionUtils;
use core\Utils;
use core\Validator;


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
        $this->form->shopName = ParamUtils::getFromPost('shopName');
        $this->form->address = ParamUtils::getFromPost('address');
        $this->form->type = ParamUtils::getFromPost('type');
        if(!empty($_POST['category'])) {
            foreach ($_POST['category'] as $selected) {
                $this->form->category [] = $selected;
            }
        }
        $this->form->time_open = ParamUtils::getFromPost('time_open');
        $this->form->time_close = ParamUtils::getFromPost('time_close');
        $this->form->description = ParamUtils::getFromPost('description');
        $this->form->lat = ParamUtils::getFromPost('lat');
        $this->form->lng = ParamUtils::getFromPost('lng');
    }

    /**
     * @return bool
     */
    public function validatePlace(){
        if(!$this->form->checkIsNull()) return false;

        $v = new Validator();
        $v->validate($this->form->shopName,[
            'trim' => true,
            'required' => true,
            'min_length' => 4,
            'max_length' => 60,
            'required_message' => 'Nazwa jest wymagana',
            'validator_message' => "Nazwa powinna składać się od 4 do 60 znaków!"
        ]);

        $v->validate($this->form->address,[
            'trim' => true,
            'required' => true,
            'min_length' => 4,
            'max_length' => 80,
            'required_message' => 'Adres jest wymagany',
            'validator_message' => "Adres powinien składać się z od 4 do 80 znaków!"
        ]);

        $v->validate($this->form->address,[
            'required' => true,
            'required_message' => "Typ jest wymagany!"
        ]);

        $v->validate($this->form->category,[
            'required' => true,
            'required_message' => "Kategorie są wymagane!"
        ]);

        $v->validate($this->form->time_open,[
            'required' => true,
            'required_message' => 'Godzina otwarcia jest wymagana!',
        ]);

        $v->validate($this->form->time_close,[
            'required' => true,
            'required_message' => 'Godzina zamknięcia jest wymagana!',
        ]);

        $v->validate($this->form->description,[
            'max_length' => 65535,
            'validator_message' => "Podany opis jest zbyt długi!"
        ]);

        $v->validate($this->form->lat,[
            'required' => true,
            'numeric' => true,
            'float' => true,
            'required_message' => "Zaznacz miejsce na mapie (kliknij)",
            'validator_message' => "Koordynaty powinny być liczbą zmiennoprzecinkową"
        ]);

        $v->validate($this->form->lng,[
            'required' => true,
            'numeric' => true,
            'float' => true,
            'required_message' => "Zaznacz miejsce na mapie (kliknij)",
            'validator_message' => "Koordynaty powinny być liczbą zmiennoprzecinkową"
        ]);

        $this->checkForDuplicates();

        if(!App::getMessages()->isError()) return true;
        else return false;
    }

    public function checkForDuplicates(){
        $record = App::getDB()->select('markers','id',[
            'name' => $this->form->shopName,
            'address' => $this->form->address,
            'type' => $this->form->type
        ]);

        if(isset($record[0])){
            Utils::addErrorMessage("Podany sklep istnieje już pod tym adresem!");
        }
    }

    /**
     *
     */
    public function insertToDB(){
        App::getDB()->insert('markers',[
            'id' => null,
            'name' => $this->form->shopName,
            'address' => $this->form->address,
            'lat' => $this->form->lat,
            'lng' => $this->form->lng,
            'type' => $this->form->type
        ]);

        $newAddedId = App::getDB()->select('markers','id',[
            'name' => $this->form->shopName,
            'address' => $this->form->address,
            'type' => $this->form->type
        ]);

        App::getDB()->insert('marker_details',[
            'id_details' => null,
            'id_marker' => $newAddedId[0],
            'description' => $this->form->description,
            'category[JSON]' => $this->form->category,
            'open_hour' => $this->form->time_open,
            'close_hour' => $this->form->time_close,
            'author' => SessionUtils::loadData('id', true)
        ]);
    }

    /**
     * @throws \SmartyException
     */
    public function generateView(){
        if($this->validatePlace()){
            $this->insertToDB();
            Utils::addInfoMessage("Pomyślnie dodano nowe miejsce!");
            header("Location: ".App::getConf()->app_url."/panel");
        }
        else{
            App::getSmarty()->assign("title", "Dodaj nowe miejsce");
            App::getSmarty()->assign("form", $this->form);
            App::getSmarty()->assign("page_title", "Dodaj nowe miejsce");
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