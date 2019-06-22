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
    Utils::addRoute('addPlace', 'AddPlaceControl', ['admin', 'moderator' , 'user', 'zbanowany']);
    Utils::addRoute('manageUsers', 'UserManagerControl', ['admin', 'moderator']);
    Utils::addRoute('managePlaces', 'ShopManagerControl', ['admin', 'moderator']);
    Utils::addRoute('userEdit', 'UserEditControl', ['admin', 'moderator']);
    Utils::addRoute('profile', 'ProfileControl', ['admin', 'moderator', 'user', 'zbanowany']);
    Utils::addRoute('panel', 'PanelControl', ['admin', 'moderator', 'user', 'zbanowany']);
    Utils::addRoute('shop', 'ShopDetailsControl', ['admin', 'moderator', 'user', 'zbanowany']);
    Utils::addRoute('vote', 'VotesControl', ['admin', 'moderator', 'user', 'zbanowany']);
    Utils::addRoute('placeEdit', 'ShopEditControl', ['admin', 'moderator']);
    Utils::addRoute('search', 'SearchControl', ['admin', 'moderator', 'user']);
    Utils::addRoute('hint', 'SearchHintsControl', ['admin', 'moderator', 'user', 'zbanowany']);

    //Utils::addRoute('action_name', 'controller_class_name');