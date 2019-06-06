<?php
/**
 * Created by PhpStorm.
 * User: TalarPC
 * Date: 06.06.2019
 * Time: 22:29
 */

namespace app\controllers;


class VotesControl
{
    public function getFromRequest(){
        //Pobierz z GET bądź z clean URL
    }

    public function getUserData(){
        //Pobierz usera, żeby nikt inny nie oddał głosu

    }

    public function validate(){
        //Sprawdź czy dane się zgadzają: czy sklep istnieje, czy user istnieje
        //Zbanowani nie mogą głosować
        //Nie można oddać głosu na swoje miejsce
    }

    public function checkVote(){
        //Sprawdź czy user oddał już głos na to miejsce
    }

    public function processVote(){
        //Procesuj głos - w zależności od tego co zwróci checkVote:
        //Jeśli głos został już oddany, to usuń rekord z bazy i dekrementuj reputacje autora wpisu i voty we wpisie
        //Jeżeli głosu nie było to inkrementuj
        if($this->validate()){
            $this->checkVote();
            //... apdejt w bazie
        }
    }

    public function action_vote(){
        $this->getFromRequest();
        $this->getUserData();
        $this->processVote();
    }
}