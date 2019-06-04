<?php
/* Smarty version 3.1.33, created on 2019-06-04 17:30:37
  from 'D:\Aplikacje\XAMPP\htdocs\Projekt\app\views\PanelView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5cf68e9d5b9196_68446990',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'cce98ce15f077c7fedfbdf7a54cd3a93bc43b4ef' => 
    array (
      0 => 'D:\\Aplikacje\\XAMPP\\htdocs\\Projekt\\app\\views\\PanelView.tpl',
      1 => 1559662231,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5cf68e9d5b9196_68446990 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_13800285195cf68e9d5a91e4_40533070', 'intro');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, "main.tpl");
}
/* {block 'intro'} */
class Block_13800285195cf68e9d5a91e4_40533070 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'intro' => 
  array (
    0 => 'Block_13800285195cf68e9d5a91e4_40533070',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <header id="head" class="secondary"></header>
    <!-- container -->
    <div class="container">

        <ol class="breadcrumb">
            <li><a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
main">Strona główna</a></li>
            <li class="active"><?php echo $_smarty_tpl->tpl_vars['page_title']->value;?>
</li>
        </ol>

        <div class="row">
            <!-- Article main content -->
            <article class="col-md-12 col-xs-12 maincontent">
                <header class="page-header">
                    <h1 class="page-title">Panel główny</h1>
                </header>

                <div class="col-md-12 col-sm-12">
                    <h4>Wyszukiwarka</h4>
                    <div class="panel panel-default">
                        <div class="panel-body">

                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-sm-12">
                    <div class="" id="h1">
                        <h4>Ostatnio dodane</h4>
                        <ul class="list-group">
                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['lastAdded']->value, 'last');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['last']->value) {
?>
                                <li class="list-group-item"><?php echo $_smarty_tpl->tpl_vars['last']->value['name'];?>
 - <?php echo $_smarty_tpl->tpl_vars['last']->value['category'];?>
</li>
                            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                        </ul>
                    </div>
                    <div class="" id="h2">
                        <h4>Najlepsi użytkownicy</h4>
                        <ul class="list-group">
                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['topUsers']->value, 'usr');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['usr']->value) {
?>
                                <li class="list-group-item"><?php echo $_smarty_tpl->tpl_vars['usr']->value['login'];?>
 - <?php echo $_smarty_tpl->tpl_vars['usr']->value['reputation'];?>
</li>
                            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                        </ul>
                    </div>
                </div>
                <div class="map-style col-md-6 col-sm-12 new-place row">
                    <div id="map"></div>
                </div>

            </article>
            <article class="col-md-12 col-xs-12 maincontent">
                <div class="col-md-6 col-sm-12">
                    <h4>Ostatnio zarejestrowani</h4>
                    <ul class="list-group">
                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['lastRegister']->value, 'last');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['last']->value) {
?>
                            <li class="list-group-item"><?php echo $_smarty_tpl->tpl_vars['last']->value['login'];?>
 - <?php echo $_smarty_tpl->tpl_vars['last']->value['register_date'];?>
</li>
                        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                    </ul>
                </div>
                <div class="col-md-6 col-sm-12">
                    <h4>Akcje</h4>
                    <ul class="list-group">
                        <li class="list-group-item">Dodaj sklep</li>
                        <li class="list-group-item">Mój profil</li>
                    </ul>
                </div>
            </article>
            <!-- /Article -->



            <div class="space"> . </div>
        </div>

    </div>	<!-- /container -->

    <?php echo '<script'; ?>
>
        var customLabel = {
            gastronomy: {
                label: 'R'
            },
            bar: {
                label: 'B'
            },
            gas_station: {
                label: 'G'
            },
            shop: {
                label: 'S'
            }
        };


        var map, infoWindow;
        function initMap() {
            var map = new google.maps.Map(document.getElementById('map'), {
                center: new google.maps.LatLng(52.217715, 21.013055),
                zoom: 13
            });
            var infoWindow = new google.maps.InfoWindow;

            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function(position) {
                    var pos = {
                        lat: position.coords.latitude,
                        lng: position.coords.longitude
                    };

                    map.setCenter(pos);
                }, function() {
                    handleLocationError(true, infoWindow, map.getCenter());
                });
            } else {
                handleLocationError(false, infoWindow, map.getCenter());
            }

            downloadUrl('<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
generateXML', function(data) {
                var xml = data.responseXML;
                var markers = xml.documentElement.getElementsByTagName('marker');
                Array.prototype.forEach.call(markers, function(markerElem) {
                    var id = markerElem.getAttribute('id');
                    var name = markerElem.getAttribute('name');
                    var address = markerElem.getAttribute('address');
                    var type = markerElem.getAttribute('type');
                    var point = new google.maps.LatLng(
                        parseFloat(markerElem.getAttribute('lat')),
                        parseFloat(markerElem.getAttribute('lng')));

                    var infowincontent = document.createElement('div');
                    var strong = document.createElement('strong');
                    strong.textContent = name
                    infowincontent.appendChild(strong);
                    infowincontent.appendChild(document.createElement('br'));

                    var text = document.createElement('text');
                    text.textContent = address
                    infowincontent.appendChild(text);
                    var icon = customLabel[type] || {};
                    var marker = new google.maps.Marker({
                        map: map,
                        position: point,
                        label: icon.label
                    });
                    marker.addListener('click', function() {
                        infoWindow.setContent(infowincontent);
                        infoWindow.open(map, marker);
                    });
                });
            });
        }



        function downloadUrl(url, callback) {
            var request = window.ActiveXObject ?
                new ActiveXObject('Microsoft.XMLHTTP') :
                new XMLHttpRequest;

            request.onreadystatechange = function() {
                if (request.readyState == 4) {
                    request.onreadystatechange = doNothing;
                    callback(request, request.status);
                }
            };

            request.open('GET', url, true);
            request.send(null);
        }

        function doNothing() {}


        function handleLocationError(browserHasGeolocation, infoWindow, pos) {
            infoWindow.setPosition(pos);
            infoWindow.setContent(browserHasGeolocation ?
                'Error: The Geolocation service failed.' :
                'Error: Your browser doesn\'t support geolocation.');
            infoWindow.open(map);
        }
    <?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 async defer
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBKDC4RkalzqSIb9AgI_nP7Qny28Dkhw_Y&callback=initMap">
    <?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
>
        var x1 = document.getElementById('h1').offsetHeight;
        var x2 = document.getElementById('h1').offsetHeight;
        var offset = x1 + x2 + 30;
        document.getElementById("map").style.height = offset + "px";
    <?php echo '</script'; ?>
>

<?php
}
}
/* {/block 'intro'} */
}
