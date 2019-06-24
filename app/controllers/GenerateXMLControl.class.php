<?php
/**
 * Created by PhpStorm.
 * User: TalarPC
 * Date: 05.05.2019
 * Time: 22:13
 */

namespace app\controllers;

use core\App;
use core\ParamUtils;
use core\Utils;

class GenerateXMLControl
{
    function parseToXML($htmlStr)
    {
        $xmlStr=str_replace('<','&lt;',$htmlStr);
        $xmlStr=str_replace('>','&gt;',$xmlStr);
        $xmlStr=str_replace('"','&quot;',$xmlStr);
        $xmlStr=str_replace("'",'&#39;',$xmlStr);
        $xmlStr=str_replace("&",'&amp;',$xmlStr);
        return $xmlStr;
    }

    public function action_generateXML(){
        $result = null;
        $lat = ParamUtils::getFromCleanURL(1);
        $lng = ParamUtils::getFromCleanURL(2);
        $where = [];

        if(isset($lat) && isset($lng)){
            $where = [
                "lat[<>]" => [$lat - 0.01, $lat + 0.01],
                "lng[<>]" => [$lng - 0.01, $lng + 0.01]
            ];
        }

        try{
            $result = App::getDB()->select("markers", "*", $where);
        }catch(\PDOException $e){
            Utils::addErrorMessage("Błąd połączenia z bazą danych!");
        }

        header("Content-type: text/xml");

        // Start XML file, echo parent node
        echo "<?xml version='1.0' ?>";
        echo '<markers>';
        // Iterate through the rows, printing XML nodes for each
        foreach($result as $row){
            // Add to XML document node
            echo '<marker ';
            echo 'id="' . $row['id'] . '" ';
            echo 'name="' . $this->parseToXML($row['name']) . '" ';
            echo 'address="' . $this->parseToXML($row['address']) . '" ';
            echo 'lat="' . $row['lat'] . '" ';
            echo 'lng="' . $row['lng'] . '" ';
            echo 'type="' . $row['type'] . '" ';
            echo '/>';
        }

        // End XML file
        echo '</markers>';
    }
}