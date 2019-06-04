<?php
/**
 * Created by PhpStorm.
 * User: TalarPC
 * Date: 04.06.2019
 * Time: 13:09
 */

namespace app\controllers;


use core\App;

class PanelControl
{
    public $lastAdded;
    public $topUsers;
    public $lastRegister;
    public $allPlaces;
    public $allUsers;

    public function getLastAdded(){
        $records = App::getDB()->select("markers",[
            "[>]marker_details" => ["id" => "id_marker"],
            "[>]user" => ["marker_details.author" => "id"],
        ],[
            'markers.id',
            'markers.name',
            'markers.address'
        ],[
            "ORDER" => [
                "marker_details.added_time" => "DESC",
            ],
            'LIMIT' => 5
        ]);

        return $records;
    }

    public function getLastRegister(){
        $records = App::getDB()->select("user", [
            "[>]user_details" => ["id" => "id_details"]
        ],[
            'user.id',
            'user.login',
            'user_details.register_date',
            'user_details.avatar_ref'
        ],[
            "ORDER" => [
                'user_details.register_date' => "DESC",
            ],
            'LIMIT' => 5
        ]);

        return $records;
    }

    public function getTopUsers(){
        $records = App::getDB()->select("user", [
            "[>]user_details" => ["id" => "id_details"]
        ],[
            'user.id',
            'user.login',
            'user_details.reputation',
            'user_details.avatar_ref'
        ],[
            "ORDER" => [
                'user_details.reputation' => "DESC",
            ],
            'LIMIT' => 5
        ]);

        return $records;
    }

    public function getAmountOfUsers(){
        $count = App::getDB()->count("user", "id");
        return $count;
    }

    public function getAmountOfPlaces(){
        $count = App::getDB()->count("markers", "id");
        return $count;
    }

    public function action_panel(){
        $this->lastAdded = $this->getLastAdded();
        $this->lastRegister = $this->getLastRegister();
        $this->topUsers = $this->getTopUsers();
        $this->allPlaces = $this->getAmountOfPlaces();
        $this->allUsers = $this->getAmountOfUsers();
        $this->generateView();
    }

    public function generateView(){
        App::getSmarty()->assign('lastAdded', $this->lastAdded);
        App::getSmarty()->assign('lastRegister', $this->lastRegister);
        App::getSmarty()->assign('topUsers', $this->topUsers);
        App::getSmarty()->assign('allPlaces', $this->allPlaces);
        App::getSmarty()->assign('allUsers', $this->allUsers);
        App::getSmarty()->assign('page_title', "Panel główny");
        App::getSmarty()->display("PanelView.tpl");
    }

}