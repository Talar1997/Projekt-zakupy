<?php
/* Smarty version 3.1.33, created on 2019-06-03 22:57:47
  from 'D:\Aplikacje\XAMPP\htdocs\Projekt\app\views\AddPlaceView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5cf589cb0b8885_34707497',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'dca444a7195faf7956da339586cefc644f6fe92f' => 
    array (
      0 => 'D:\\Aplikacje\\XAMPP\\htdocs\\Projekt\\app\\views\\AddPlaceView.tpl',
      1 => 1559595463,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5cf589cb0b8885_34707497 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_14733254865cf589cb0a92a1_73620184', 'intro');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, "main.tpl");
}
/* {block 'intro'} */
class Block_14733254865cf589cb0a92a1_73620184 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'intro' => 
  array (
    0 => 'Block_14733254865cf589cb0a92a1_73620184',
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
            <article class="col-xs-12 maincontent">
                <header class="page-header">
                    <h1 class="page-title">Dodaj nowe miejsce</h1>
                </header>

                <div class="col-md-6 col-sm-8 row">
                    <div class="panel panel-default">
                        <div class="panel-body" id="addingForm">
                         <form action="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
addPlace" method="post">
                                <div class="top-margin">
                                    <label>Nazwa miejsca <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="shopName" placeholder="Pełna nazwa" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->shopName;?>
">
                                </div>
                                <div class="top-margin">
                                    <label>Adres <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="address" placeholder="Adres wraz z miejscowością" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->address;?>
">
                                </div>

                                <div class="form-group top-margin">
                                    <label for="type">Typ<span class="text-danger">*</span></label>
                                    <select class="form-control" name="type">
                                        <option value="gas_station">Stacja benzynowa</option>
                                        <option value="bar">Bar</option>
                                        <option value="gastronomy">Gastronomia</option>
                                        <option value="shop">Sklep</option>
                                    </select>
                                </div>

                                <div class="form-group top-margin">
                                    <label for="category">Jakie artykuły można tam nabyć?<span class="text-danger">*</span></label>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="alcohol" name="category[]">
                                        <label class="form-check-label" for="defaultCheck1">
                                            Alkohol i papierosy
                                        </label>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="bread" name="category[]">
                                            <label class="form-check-label" for="defaultCheck1">
                                                Pieczywo
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="cosmetics" name="category[]">
                                            <label class="form-check-label" for="defaultCheck1">
                                                Chemia i kosmetyki
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="fruits" name="category[]">
                                            <label class="form-check-label" for="defaultCheck1">
                                                Owoce i warzywa
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="meats" name="category[]">
                                            <label class="form-check-label" for="defaultCheck1">
                                                Mięso i wędliny
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="press" name="category[]">
                                            <label class="form-check-label" for="defaultCheck1">
                                                Prasa
                                            </label>
                                        </div>
                                    </div>
                                </div>

                                 <div class="form-group top-margin">
                                     <label>Godziny otwarcia (Od, do)<span class="text-danger">*</span></label>
                                     <div class="row">
                                         <div class="col-md-6">
                                             <input type="time" class="form-control" name="time_open" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->time_open;?>
">
                                         </div>
                                         <div class="col-md-6">
                                             <input type="time" class="form-control" name="time_close" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->time_close;?>
">
                                         </div>
                                     </div>
                                 </div>

                                <div class="form-group">
                                    <label for="description">Opis (nie wymagane)</label>
                                    <textarea class="form-control" rows="3" name="description" id="description"><?php echo $_smarty_tpl->tpl_vars['form']->value->description;?>
</textarea>
                                </div>

                             <input type="hidden" class="form-control" name="lat" id="lat" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->lat;?>
">
                             <input type="hidden" class="form-control" name="lng" id="lng" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->lng;?>
">


                                <hr>

                                <div class="row">
                                    <div class="col-lg-1 text-right">
                                        <button class="btn btn-action" type="submit">Dodaj</button>
                                    </div>
                                </div>

                            </form>
                        </div>

                    </div>
                </div>
                <div class="map-style col-md-6 col-sm-12 row new-place">
                    <div id="map"></div>
                </div>

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

                    function initMap() {
                        var map = new google.maps.Map(document.getElementById('map'), {
                            center: new google.maps.LatLng(52.217715, 21.013055),
                            zoom: 15
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

                        // Change this depending on the name of your PHP or XML file
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

                        var userMarker = new google.maps.Marker({
                            map: map,
                            title: 'Miejsce oznaczone przez ciebie',
                            icon: {
                                url: "http://maps.google.com/mapfiles/ms/icons/yellow-dot.png"
                            }
                        });

                        <?php if ((is_numeric($_smarty_tpl->tpl_vars['form']->value->lat) || is_numeric($_smarty_tpl->tpl_vars['form']->value->lng))) {?>
                            var latlng = new google.maps.LatLng(<?php echo $_smarty_tpl->tpl_vars['form']->value->lat;?>
, <?php echo $_smarty_tpl->tpl_vars['form']->value->lng;?>
);
                            userMarker.setPosition(latlng);
                            map.panTo(latlng);
                        <?php }?>

                        //Zaznaczanie lokalizacji
                        google.maps.event.addListener(map, "click", function(event) {
                            var lat = event.latLng.lat();
                            var lng = event.latLng.lng();
                            document.getElementById("lat").value = lat;
                            document.getElementById("lng").value = lng;

                            var latlng = new google.maps.LatLng(lat, lng);
                            userMarker.setPosition(latlng);
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
                <?php echo '</script'; ?>
>
                <?php echo '<script'; ?>
 async defer
                        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBKDC4RkalzqSIb9AgI_nP7Qny28Dkhw_Y&callback=initMap">
                <?php echo '</script'; ?>
>
                <?php echo '<script'; ?>
>
                    var offsetHeight = document.getElementById('addingForm').offsetHeight;
                    document.getElementById("map").style.height = offsetHeight + "px";
                <?php echo '</script'; ?>
>

            </article>
            <!-- /Article -->

            <div class="space"> . </div>
        </div>

    </div>	<!-- /container -->

<?php
}
}
/* {/block 'intro'} */
}
