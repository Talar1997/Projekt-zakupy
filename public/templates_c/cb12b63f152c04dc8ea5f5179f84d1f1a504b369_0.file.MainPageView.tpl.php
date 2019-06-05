<?php
/* Smarty version 3.1.33, created on 2019-06-04 23:53:19
  from 'D:\Aplikacje\XAMPP\htdocs\Projekt\app\views\MainPageView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5cf6e84f3f4556_89711685',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'cb12b63f152c04dc8ea5f5179f84d1f1a504b369' => 
    array (
      0 => 'D:\\Aplikacje\\XAMPP\\htdocs\\Projekt\\app\\views\\MainPageView.tpl',
      1 => 1557759569,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5cf6e84f3f4556_89711685 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_12781728495cf6e84f3ec654_99423595', 'head');
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_5806155455cf6e84f3f0de6_46820446', 'intro');
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_17062548185cf6e84f3f1ae0_34125285', 'jumbotron');
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, "main.tpl");
}
/* {block 'head'} */
class Block_12781728495cf6e84f3ec654_99423595 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head' => 
  array (
    0 => 'Block_12781728495cf6e84f3ec654_99423595',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <header id="head">
        <div class="container">
            <div class="row">
                <h1 class="lead">Zakupy w niedziele</h1>
                <p class="tagline">Sprawdź otwarte sklepy w twojej okolicy. Dodawaj nowe obiekty, bądź częścią ogromnej społeczności!</p>
                <p><a class="btn btn-default btn-lg" role="button" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
panel">SZUKAJ SKLEPU</a></p>
            </div>
        </div>
    </header>
<?php
}
}
/* {/block 'head'} */
/* {block 'intro'} */
class Block_5806155455cf6e84f3f0de6_46820446 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'intro' => 
  array (
    0 => 'Block_5806155455cf6e84f3f0de6_46820446',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="container text-center">
        <br> <br>
        <h2 class="thin">Z nami życie staje się prostsze</h2>
        <p class="text-muted">
            Jeżeli coś ci umknęło i zapomniałeś zrobić zakupy wcześniej, to nic straconego!<br>
            Wystarczy się zarejestrować i znaleźć to, czego potrzebujesz!
        </p>
    </div>
<?php
}
}
/* {/block 'intro'} */
/* {block 'jumbotron'} */
class Block_17062548185cf6e84f3f1ae0_34125285 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'jumbotron' => 
  array (
    0 => 'Block_17062548185cf6e84f3f1ae0_34125285',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="jumbotron top-space">
        <div class="container">

            <h2 class="text-center thin">Dlaczego akurat my?</h2>

            <div class="row">
                <div class="col-md-3 col-sm-6 highlight">
                    <div class="h-caption"><h4><i class="fa fa-cogs fa-5"></i>Zaawansowane mechanizmy</h4></div>
                    <div class="h-body text-center">
                        <p>Nasz portal wyposażony jest w zaawansowane mechanizmy i algorytmy, które pozwolą ci w błyskawicznym tempie odnaleźć to czego szukasz! Zdecydowanie znajdziesz tu coś, czego nie ma na żadnym innym portalu tego typu!</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 highlight">
                    <div class="h-caption"><h4><i class="fa fa-flash fa-5"></i>Ogromna baza</h4></div>
                    <div class="h-body text-center">
                        <p>Zrzeszamy masę ludzi z całego kraju, dzięki czemu nasza baza sklepów otwartych w niedziele jest bardzo duża. Z każdym dniem poszerzamy swój zbiór o setki nowych sklepów z każdego zakątka polski!</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 highlight">
                    <div class="h-caption"><h4><i class="fa fa-heart fa-5"></i>Pomocna społeczność</h4></div>
                    <div class="h-body text-center">
                        <p>Masa ludzi, którzy chcą udzielić wsparcia właśnie tobie! Nie daj się dłużej namawiać, może i Tobie uda się komuś pomóc?</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 highlight">
                    <div class="h-caption"><h4><i class="fa fa-smile-o fa-5"></i>System reputacji</h4></div>
                    <div class="h-body text-center">
                        <p>Zbieraj punkty reputacji za dodane sklepy i wystawione komentarze! Zostać lokalnym przewodnikiem po swojej okolicy i poszerzaj razem z nami naszą bazę sklepów otwartych w niedzielę. </p>
                    </div>
                </div>
            </div> <!-- /row  -->

        </div>
    </div>

    <div id="map" class="interactive-map"></div>
    <?php echo '<script'; ?>
>
        var customLabel = {
            restaurant: {
                label: 'R'
            },
            bar: {
                label: 'B'
            }
        };

        var map, infoWindow;
        function initMap() {
            var map = new google.maps.Map(document.getElementById('map'), {
                center: new google.maps.LatLng(52.217715, 21.013055),
                zoom: 6
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

<?php
}
}
/* {/block 'jumbotron'} */
}
