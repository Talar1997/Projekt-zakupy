<?php

    use core\App;
    use core\Utils;

    App::getRouter()->setDefaultRoute('showMainPage'); #default action
    App::getRouter()->setLoginRoute('login');

    Utils::addRoute('showMainPage', 'MainControl');
    Utils::addRoute('login', 'LoginControl');
    Utils::addRoute('register', 'RegisterControl');
    Utils::addRoute('logout', 'LoginControl');
    Utils::addRoute('restore', 'RestorePasswordControl');
    Utils::addRoute('checkAnswer', 'SecurityAnswerControl');
    Utils::addRoute('test', 'TestControl');
    Utils::addRoute('generateXML', 'GenerateXMLControl');
    Utils::addRoute('adminLogs', 'LogsControl', ['admin']);

    //Todo
    Utils::addRoute('addPlace', 'AddPlaceControl', ['admin', 'user']);
    Utils::addRoute('manageUsers', 'UserManagerControl', ['admin']);
    Utils::addRoute('userEdit', 'UserEditControl', ['admin']);


    //Utils::addRoute('action_name', 'controller_class_name');