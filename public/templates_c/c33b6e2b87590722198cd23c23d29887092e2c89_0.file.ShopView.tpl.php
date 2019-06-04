<?php
/* Smarty version 3.1.33, created on 2019-06-04 23:51:54
  from 'D:\Aplikacje\XAMPP\htdocs\Projekt\app\views\ShopView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5cf6e7fa5b62c7_97608814',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c33b6e2b87590722198cd23c23d29887092e2c89' => 
    array (
      0 => 'D:\\Aplikacje\\XAMPP\\htdocs\\Projekt\\app\\views\\ShopView.tpl',
      1 => 1559684312,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5cf6e7fa5b62c7_97608814 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_9719257995cf6e7fa5a9230_80591054', 'intro');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, "main.tpl");
}
/* {block 'intro'} */
class Block_9719257995cf6e7fa5a9230_80591054 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'intro' => 
  array (
    0 => 'Block_9719257995cf6e7fa5a9230_80591054',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="jumbotron top-space">
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
main">Strona główna</a></li>
                <li class="active"><?php echo $_smarty_tpl->tpl_vars['page_title']->value;?>
</li>
            </ol>
            <h2 class="text-center thin">Miejsce: <b><?php echo $_smarty_tpl->tpl_vars['place']->value['name'];?>
</b></h2>
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading resume-heading">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="col-xs-12 col-sm-6">
                                    <div id="map"></div>
                                </div>
                                <div class="col-xs-12 col-sm-6">
                                    <ul class="list-group" id="height">
                                        <li class="list-group-item">Nazwa: <?php echo $_smarty_tpl->tpl_vars['place']->value['name'];?>
</li>
                                        <li class="list-group-item">Adres: <?php echo $_smarty_tpl->tpl_vars['place']->value['address'];?>
</li>
                                        <li class="list-group-item">Typ: <?php echo $_smarty_tpl->tpl_vars['place']->value['type'];?>
</li>
                                        <li class="list-group-item">Godziny otwarcia: Od <?php echo $_smarty_tpl->tpl_vars['place']->value['open_hour'];?>
 do <?php echo $_smarty_tpl->tpl_vars['place']->value['close_hour'];?>
</li>
                                        <li class="list-group-item">Kategorie: <?php echo $_smarty_tpl->tpl_vars['place']->value['category'];?>
</li>
                                        <?php if (!empty($_smarty_tpl->tpl_vars['place']->value['description'])) {?>
                                            <li class="list-group-item">Opis: <?php echo $_smarty_tpl->tpl_vars['place']->value['description'];?>
</li>
                                        <?php }?>
                                        <li class="list-group-item">Głosy: <?php echo $_smarty_tpl->tpl_vars['place']->value['votes'];?>
</li>
                                        <li class="list-group-item">Autor:
                                            <a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
profile/<?php echo $_smarty_tpl->tpl_vars['place']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['place']->value['login'];?>
</a>
                                        </li>
                                        <li class="list-group-item">Data dodania: <?php echo $_smarty_tpl->tpl_vars['place']->value['added_time'];?>
</li>
                                        <li class="list-group-item">
                                            <a href="#"><button class="btn btn-success">+</button></a>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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


        var map, infoWindow;
        function initMap() {
            var map = new google.maps.Map(document.getElementById('map'), {
                center: new google.maps.LatLng(<?php echo $_smarty_tpl->tpl_vars['place']->value['lat'];?>
, <?php echo $_smarty_tpl->tpl_vars['place']->value['lng'];?>
),
                zoom: 13
            });
            var infoWindow = new google.maps.InfoWindow;

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
    <?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 async defer
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBKDC4RkalzqSIb9AgI_nP7Qny28Dkhw_Y&callback=initMap">
    <?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
>
        var offsetHeight = document.getElementById('height').offsetHeight;
        document.getElementById("map").style.height = offsetHeight + "px";
    <?php echo '</script'; ?>
>
<?php
}
}
/* {/block 'intro'} */
}
