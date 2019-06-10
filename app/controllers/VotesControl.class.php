<?php
/**
 * Created by PhpStorm.
 * User: TalarPC
 * Date: 06.06.2019
 * Time: 22:29
 */

namespace app\controllers;


use core\App;
use core\SessionUtils;
use core\Utils;
use core\Validator;

class VotesControl
{
    public $user;
    public $shopId;
    public $author;

    public function getFromRequest(){
        $v = new Validator();
        $this->shopId = $v->validateFromCleanURL(1,[
            'required' => true,
            'numeric' => true,
            'required_message' => "Błąd!",
            'validator_message' => "Błąd!"
        ]);
    }

    public function getUserData(){
        $this->user['id'] = SessionUtils::load('id', true);
        $this->user['login'] = SessionUtils::load('login', true);
        $this->user['role'] = SessionUtils::load('role', true);
    }

    public function getAuthor(){
        try{
            $this->author = App::getDB()->get("marker_details","author",[
                'id_marker' => $this->shopId
            ]);
        }catch(\PDOException $e){
            Utils::addErrorMessage("Błąd połączenia z bazą danych!");
        }
    }

    public function validate(){
        //Czy sklep istnieje?
        //Czy user nie jest zbanowany?
        try{
            $isExists = App::getDB()->has('markers',[
                'id' => $this->shopId
            ]);

            if(!$isExists) Utils::addErrorMessage("Sklep nie istieje!");
        }catch (\PDOException $e){
            Utils::addErrorMessage("Błąd połączenia z bazą danych!");
        }

        if($this->user['role'] == "zbanowany") Utils::addErrorMessage("Zbanowany użytkownik nie może głosować!");

        if(App::getMessages()->isError()) return false;
        else return true;
    }

    public function checkVote(){
        //Sprawdź czy user oddał już głos na to miejsce
        try{
            $isExists = App::getDB()->has('vote',[
                'id_marker' => $this->shopId,
                'id_user' => $this->user['id']
            ]);

            if($isExists) return true;
            else return false;
        }catch (\PDOException $e){
            Utils::addErrorMessage("Błąd połączenia z bazą danych!");
        }
    }

    public function processVote(){
        //Procesuj głos - w zależności od tego co zwróci checkVote:
        //Jeśli głos został już oddany, to usuń rekord z bazy i dekrementuj reputacje autora wpisu i voty we wpisie
        //Jeżeli głosu nie było to inkrementuj
        if($this->validate()){
            $this->getAuthor();
            if(!$this->checkVote()){
                try{
                    App::getDB()->insert('vote',[
                        'id_marker' => $this->shopId,
                        'id_user' => $this->user['id']
                    ]);

                    App::getDB()->update("marker_details",[
                        'votes[+]' => 1
                    ],[
                        'id_marker' => $this->shopId
                    ]);

                    App::getDB()->update("user_details",[
                        'reputation[+]' => 1
                    ],[
                        'id_details' => $this->author
                    ]);
                }catch (\PDOException $e){
                    Utils::addErrorMessage("Błąd połączenia z bazą danych!");
                }
            }
            else{
                try{
                    App::getDB()->delete('vote',[
                        'id_marker' => $this->shopId,
                        'id_user' => $this->user['id']
                    ]);

                    App::getDB()->update("marker_details",[
                        'votes[-]' => 1
                    ],[
                        'id_marker' => $this->shopId
                    ]);

                    App::getDB()->update("user_details",[
                        'reputation[-]' => 1
                    ],[
                        'id_details' => $this->author
                    ]);
                }catch (\PDOException $e){
                    Utils::addErrorMessage("Błąd połączenia z bazą danych!");
                }
            }
        }
    }

    public function action_vote(){
        $this->getFromRequest();
        $this->getUserData();
        $this->processVote();
        $this->getVotes();
    }

    public function getVotes(){
        $votes = 0;
        try{
            $votes = App::getDB()->count('vote',[
                'id_marker' => $this->shopId
            ]);
        }catch (\PDOException $e) {
            Utils::addErrorMessage("Błąd połączenia z bazą danych!");
        }

        echo $votes;
    }
}