<?php

namespace app\forms;

class PlaceForm
{
    public $shopName;
    public $address;
    public $type;
    public $category;
    public $time_open;
    public $time_close;
    public $description;
    public $lat;
    public $lng;

    function checkIsNull() {
        foreach ($this as $key => $value) {
            if(!isset($value)) return false;
            else return true;
        }
    }
}