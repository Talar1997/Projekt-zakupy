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
use core\RoleUtils;
use core\Utils;
use core\Validator;
use core\SessionUtils;

class ShopDetailsControl
{

    public $id;
    public $markerData;
    public $userVote;
    public $disableVote;

    public function getMarkerFromDb($id){
        try{
            $this->markerData = App::getDB()->get("markers", [
                "[>]marker_details" => ["id" => "id_marker"],
                "[>]user" => ["marker_details.author" => "id"],
            ],[
                'marker_details.description',
                'marker_details.category[JSON]',
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
                'markers.type',
            ],[
                'markers.id' => $id
            ]);
        }catch(\PDOException $e){
            Utils::addErrorMessage("Błąd połączenia z bazą danych!");
        }
        return $this->markerData;
    }

    public function hasUserVote(){
        $userVote = false;
        try{
            $userVote = App::getDB()->has("vote",[
                'id_marker' => $this->id,
                'id_user' => SessionUtils::load('id', true)
            ]);
        }catch (\PDOException $e){
            Utils::addErrorMessage("Błąd połączenia z bazą danych!");
        }
        return $userVote;
    }

    public function havePermissionToVote(){
        try{
            $author = App::getDB()->has("marker_details",[
                'id_marker' => $this->markerData['id_marker'],
                'author' => SessionUtils::load('id', true)
            ]);

            $isBanned = RoleUtils::inRole("zbanowany");

            if($author || $isBanned) return true;
            else return false;
        }catch(\PDOException $e){
            Utils::addErrorMessage("Błąd połączenia z bazą danych!");
        }

        return true;
    }

    public function generateView(){
        $this->markerData = $this->getMarkerFromDb($this->id);
        $this->userVote = $this->hasUserVote();
        $this->disableVote = $this->havePermissionToVote();
        App::getSmarty()->assign("place", $this->markerData);
        App::getSmarty()->assign("userVote", $this->userVote);
        App::getSmarty()->assign("disableVote", $this->disableVote);
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

        $this->isExist();

        if(App::getMessages()->isError()) return false;
        else return true;
    }

    public function isExist(){
        try{
            $isExist = App::getDB()->has("markers", [
                'id' => $this->id
            ]);

            if(!$isExist){
                Utils::addErrorMessage("Użytkownik o podanym id nie istnieje!");
            }
        }catch(\PDOException $e){
            Utils::addErrorMessage("Błąd połączenia z bazą danych!");
        }
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