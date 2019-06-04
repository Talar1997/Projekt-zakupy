<?php
/**
 * Created by PhpStorm.
 * User: TalarPC
 * Date: 04.06.2019
 * Time: 22:50
 */

namespace app\controllers;

use core\App;
use core\ParamUtils;
use core\Utils;
use core\Validator;

class ShopDetailsControl
{

    public $id;
    public $markerData;

    public function getMarkerFromDb($id){
        $this->markerData = App::getDB()->select("markers", [
            "[>]marker_details" => ["id" => "id_marker"],
            "[>]user" => ["marker_details.author" => "id"],
        ],[
            'marker_details.description',
            'marker_details.category',
            'marker_details.open_hour',
            'marker_details.close_hour',
            'marker_details.added_time',
            'marker_details.id_marker',
            'user.login',
            'user.id',
            'marker_details.votes',
            'markers.name',
            'markers.address',
            'markers.lat',
            'markers.lng',
            'markers.type'
        ],[
            'markers.id' => $id
        ]);

        return $this->markerData[0];
    }

    public function generateView(){
        $this->markerData = $this->getMarkerFromDb($this->id);
        App::getSmarty()->assign("place", $this->markerData);
        App::getSmarty()->assign("page_title", "Miejsce: " .$this->markerData['name']);
        App::getSmarty()->display("ShopView.tpl");
    }

    public function validate(){
        if(empty($this->id) || $this->id <= 0) Utils::addErrorMessage("Brak parametru");

        $v = new Validator();
        $v->validate($this->id,[
            'numeric' => true,
            'int' => true,
            'validator_message' => 'Nieprawidłowy parametr!',
        ]);

        $isExist = App::getDB()->count("markers", "id", [
            'id' => $this->id
        ]);

        if($isExist != 1){
            Utils::addErrorMessage("Użytkownik o podanym id nie istnieje!");
        }

        if(App::getMessages()->isError()) return false;
        else return true;
    }

    public function action_shop(){
        $this->id = ParamUtils::getFromCleanURL(1);

        if(!$this->validate()){
            header("Location: ".App::getConf()->app_url."/panel");
        }
        else{
            $this->generateView();
        }
    }
}