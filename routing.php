<?php

    use core\App;
    use core\Utils;

    App::getRouter()->setDefaultRoute('showMainPage'); #default action
    //App::getRouter()->setLoginRoute('login'); #action to forward if no permissions

    App::getRouter()->setLoginRoute('login'); #default action

    Utils::addRoute('showMainPage', 'MainControl');
    Utils::addRoute('login', 'LoginControl');
    Utils::addRoute('register', 'RegisterControl');
    Utils::addRoute('logout', 'LoginControl');
    Utils::addRoute('restore', 'RestorePasswordControl');
    Utils::addRoute('checkAnswer', 'SecurityAnswerControl');

    Utils::addRoute('test', 'TestControl');
    //Utils::addRoute('action_name', 'controller_class_name');