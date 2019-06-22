<?php
/**
 * Created by PhpStorm.
 * User: TalarPC
 * Date: 22.06.2019
 * Time: 16:11
 */

namespace app\forms;


class SearchForm
{
    public $shopName;
    public $address;
    public $type;
    public $category;

    function checkIsNull() {
        foreach ($this as $key => $value) {
            if(!isset($value)) return false;
            else return true;
        }
    }
}