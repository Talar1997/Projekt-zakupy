<?php
/**
 * Created by PhpStorm.
 * User: TalarPC
 * Date: 05.05.2019
 * Time: 22:13
 */

namespace app\controllers;

use core\App;

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
        $result = App::getDB()->select("markers", "*");

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