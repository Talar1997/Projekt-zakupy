<?php
/**
 * Created by PhpStorm.
 * User: TalarPC
 * Date: 11.06.2019
 * Time: 19:03
 */

namespace app\controllers;

use core\App;
use core\Logs;
use core\ParamUtils;
use core\Utils;
use core\SessionUtils;

class ShopManagerControl
{
    public $places;
    public $place;
    public $offset = 1;
    public $records = 50;

    public function getPlacesFromDB(){
        try{
            $this->places = App::getDB()->select("markers",[
                "[>]marker_details" => ["id" => "id_marker"],
                "[>]user" => ["marker_details.author" => "id"]
            ],[
                'markers.id',
                'markers.name',
                'markers.address',
                'user.login',
                'user.id(userid)',
                'marker_details.votes',
            ],[
                'LIMIT' => [(($this->offset - 1) * $this->records), $this->records]
            ]);
        }catch(\PDOException $e){
            Utils::addErrorMessage("Błąd połączenia z bazą danych!".$e->getMessage());
        }
    }

    public function getPlaceFromDB($id){
        try{
            $this->place = App::getDB()->get("markers",[
                "[>]marker_details" => ["id" => "id_marker"],
                "[>]user" => ["marker_details.author" => "id"]
            ],[
                'markers.id',
                'markers.name',
                'markers.address',
                'markers.lat',
                'markers.lng',
                'markers.type',
                'marker_details.description',
                'marker_details.category',
                'marker_details.open_hour',
                'marker_details.close_hour',
                'marker_details.added_time',
                'marker_details.author',
                'marker_details.votes',
                'user.login',
                'user.id(userid)'
            ],[
                'id_marker' => $id
            ]);
        }catch(\PDOException $e){
            Utils::addErrorMessage("Błąd połączenia z bazą danych!");
        }
    }

    public function deletePlace($id){
        try{
            $result = App::getDB()->has("markers",[
                'id' => $id
            ]);

            if($result){
                App::getDB()->delete("markers",[
                    'id' => $id
                ]);

                App::getDB()->delete("marker_details",[
                    'id_marker' => $id
                ]);

                Utils::addInfoMessage("Miejsce (".$id.") zostało usunięte");
                $admin_login = SessionUtils::load("login", true);
                Logs::addLog("Miejsce (".$id.") zostało usunięte przez ".$admin_login);
            }
            else{
                Utils::addErrorMessage("Miejsce nie istnieje");
            }
        }catch(\PDOException $e){
            Utils::addErrorMessage("Błąd połączenia z bazą danych!");
        }

        return false;
    }

    public function action_managePlaces(){
        $option = ParamUtils::getFromCleanURL(2);
        $place_id = ParamUtils::getFromCleanURL(3);

        switch ($option){
            case 'details':
                $this->getPlaceFromDB($place_id);
                App::getSmarty()->assign("details", true);
                App::getSmarty()->assign("placeDetails", $this->place);
                break;
            case "delete" :
                $this->deletePlace($place_id);
                break;
            case "edit" :
                $this->getPlaceFromDB($place_id);
                App::getSmarty()->assign("edit", true);
                App::getSmarty()->assign("placeDetails", $this->place);
                break;
        }


        $offset = ParamUtils::getFromCleanURL(1);
        if(isset($offset) && is_numeric($offset) && $offset > 0) $this->offset += $offset - 1;
        if(isset($offset) && $offset == 0) $this->records = App::getDB()->count("user","*");
        $this->generateView();
    }

    public function generateView(){
        $this->getPlacesFromDB();
        App::getSmarty()->assign("places", $this->places);
        App::getSmarty()->assign("offset", $this->offset);
        App::getSmarty()->assign("next_page", $this->offset + 1);
        App::getSmarty()->assign("previous_page", $this->offset - 1);
        App::getSmarty()->assign("page_title", "Zarządzanie miejscami");
        App::getSmarty()->display("ManagePlacesView.tpl");
    }
}