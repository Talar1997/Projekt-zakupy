<?php
/**
 * Created by PhpStorm.
 * User: TalarPC
 * Date: 11.06.2019
 * Time: 23:49
 */

namespace app\controllers;

use app\forms\PlaceForm;
use core\App;
use core\Utils;
use core\ParamUtils;
use core\Validator;
use core\Logs;
use core\SessionUtils;

class ShopEditControl
{
    public $form;
    public $placeId;

    public function __construct(){
        $this->form = new PlaceForm();
    }

    public function getParams(){
        $this->placeId = ParamUtils::getFromPost('id');
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

        $v->validate($this->form->type,[
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
        try{
            $record = App::getDB()->has('markers',[
                'AND'=>[
                    'name' => $this->form->shopName,
                    'address' => $this->form->address,
                    'id[!]' => $this->placeId
                ]
            ]);

            if($record){
                Utils::addErrorMessage("Sklep o podanej nazwie, adresie istnieje już w bazie!");
            }
        }catch(\PDOException $e){
            Utils::addErrorMessage("Błąd połączenia z bazą danych");
        }
    }

    public function updatePlace(){
        try{
            App::getDB()->update('markers',[
                'name' => $this->form->shopName,
                'address' => $this->form->address,
                'lat' => $this->form->lat,
                'lng' => $this->form->lng,
                'type' => $this->form->type
            ],[
                'id' => $this->placeId
            ]);

            App::getDB()->update('marker_details',[
                'description' => $this->form->description,
                'category[JSON]' => $this->form->category,
                'open_hour' => $this->form->time_open,
                'close_hour' => $this->form->time_close,
            ],[
                'id_marker' => $this->placeId
            ]);
        }catch(\PDOException $e){
            Utils::addErrorMessage("Błąd połączenia z bazą danych");
        }

        Utils::addInfoMessage("Pomyślnie zmieniono szczegóły miejsca!");
        $login = SessionUtils::load('login', true);
        $role = SessionUtils::load('role', true);
        Logs::addLog("Edycja miejsca: ".$this->placeId." przez ".$role.": ".$login );
    }

    public function generateView(){
        if($this->validatePlace()){
            $this->updatePlace();
        }
        header("Location: ".App::getConf()->app_url."/managePlaces/0/edit/".$this->placeId);
    }

    public function action_placeEdit(){
        $this->getParams();
        $this->generateView();
    }

}