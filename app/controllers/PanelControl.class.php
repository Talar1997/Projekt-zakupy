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

    public function getLastAdded(){
        $records = App::getDB()->select("markers",[
            "[>]marker_details" => ["id" => "id_marker"],
            "[>]user" => ["marker_details.author" => "id"],
        ],[
            'markers.id',
            'markers.name',
            'marker_details.category',
            'user.login',
            'marker_details.added_time'
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

    public function action_panel(){
        $this->lastAdded = $this->getLastAdded();
        $this->lastRegister = $this->getLastRegister();
        $this->topUsers = $this->getTopUsers();
        $this->generateView();
    }

    public function generateView(){
        App::getSmarty()->assign('lastAdded', $this->lastAdded);
        App::getSmarty()->assign('lastRegister', $this->lastRegister);
        App::getSmarty()->assign('topUsers', $this->topUsers);
        App::getSmarty()->assign('page_title', "Panel główny");
        App::getSmarty()->display("PanelView.tpl");
    }

}