<?php
/**
 * Created by PhpStorm.
 * User: TalarPC
 * Date: 09.05.2019
 * Time: 22:23
 */

namespace app\controllers;


use core\App;

/**
 * Class LogsControl
 * @package app\controllers
 */
class LogsControl
{
    /**
     * @var
     */
    public $logs;

    /**
     *
     */
    public function getLogsFromDb(){
        $this->logs = App::getDB()->select("action_log", "*",[
            "ORDER" => [
                "id" => "DESC",
            ]
        ]);
    }

    /**
     * @throws \SmartyException
     */
    public function generateView(){
        $this->getLogsFromDB();
        App::getSmarty()->assign("logs", $this->logs);
        App::getSmarty()->assign("page_title", "Logi administracyjne");
        App::getSmarty()->display("LogsView.tpl");
    }

    /**
     * @throws \SmartyException
     */
    public function action_adminLogs(){
        $this->generateView();
    }
}