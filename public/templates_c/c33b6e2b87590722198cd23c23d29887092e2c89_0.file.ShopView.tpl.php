<?php
/* Smarty version 3.1.33, created on 2019-06-11 00:56:23
  from 'D:\Aplikacje\XAMPP\htdocs\Projekt\app\views\ShopView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5cfee017313b66_38420270',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c33b6e2b87590722198cd23c23d29887092e2c89' => 
    array (
      0 => 'D:\\Aplikacje\\XAMPP\\htdocs\\Projekt\\app\\views\\ShopView.tpl',
      1 => 1560207380,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5cfee017313b66_38420270 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_14542426195cfee0172fa527_23526520', 'intro');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, "main.tpl");
}
/* {block 'intro'} */
class Block_14542426195cfee0172fa527_23526520 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'intro' => 
  array (
    0 => 'Block_14542426195cfee0172fa527_23526520',
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
                                        <li class="list-group-item">Typ:
                                            <?php if ($_smarty_tpl->tpl_vars['place']->value['type'] == "shop") {?>Sklep<?php }?>
                                            <?php if ($_smarty_tpl->tpl_vars['place']->value['type'] == "gas_station") {?>Stacja benzynowa<?php }?>
                                            <?php if ($_smarty_tpl->tpl_vars['place']->value['type'] == "gastronomy") {?>Gastronomia<?php }?>
                                            <?php if ($_smarty_tpl->tpl_vars['place']->value['type'] == "bar") {?>Bar<?php }?>
                                        </li>
                                        <li class="list-group-item">Godziny otwarcia: Od <?php echo $_smarty_tpl->tpl_vars['place']->value['open_hour'];?>
 do <?php echo $_smarty_tpl->tpl_vars['place']->value['close_hour'];?>
</li>
                                        <li class="list-group-item">Kategorie:
                                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['place']->value['category'], 'cat');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['cat']->value) {
?>
                                                <?php echo $_smarty_tpl->tpl_vars['cat']->value;?>
,
                                            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                        </li>
                                        <?php if (!empty($_smarty_tpl->tpl_vars['place']->value['description'])) {?>
                                            <li class="list-group-item">Opis: <?php echo $_smarty_tpl->tpl_vars['place']->value['description'];?>
</li>
                                        <?php }?>
                                        <li class="list-group-item">Głosy: <span id="votes"><?php echo $_smarty_tpl->tpl_vars['place']->value['votes'];?>
</span></li>
                                        <li class="list-group-item">Autor:
                                            <a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
profile/<?php echo $_smarty_tpl->tpl_vars['place']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['place']->value['login'];?>
</a>
                                        </li>
                                        <li class="list-group-item">Data dodania: <?php echo $_smarty_tpl->tpl_vars['place']->value['added_time'];?>
</li>
                                        <li class="list-group-item">
                                            <?php if (!$_smarty_tpl->tpl_vars['userVote']->value) {?>
                                                <button id="votebtn" class="btn btn-success"
                                                        onclick="ajaxReloadElement('<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
vote/<?php echo $_smarty_tpl->tpl_vars['place']->value['id_marker'];?>
','votes',changeButton)">+</button>
                                            <?php }?>
                                            <?php if ($_smarty_tpl->tpl_vars['userVote']->value) {?>
                                                <button id="votebtn" class="btn btn-danger"
                                                        onclick="ajaxReloadElement('<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
vote/<?php echo $_smarty_tpl->tpl_vars['place']->value['id_marker'];?>
','votes',changeButton)">-</button>
                                            <?php }?>

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
                zoom: 15
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
    <?php echo '<script'; ?>
>
        function changeButton(notify=true){
            var btn = document.querySelector("#votebtn");

            if(btn.classList.contains("btn-success")){
                btn.classList.remove("btn-success");
                btn.classList.add("btn-danger");
                document.getElementById("votebtn").innerText = "-";
                if(notify) alertify.success("Oddano głos");
                return false;
            }

            if(btn.classList.contains("btn-danger")){
                btn.classList.remove("btn-danger");
                btn.classList.add("btn-success");
                document.getElementById("votebtn").innerText = "+";
                if(notify) alertify.warning("Zabrano głos");
                return false;
            }
        }

    <?php echo '</script'; ?>
>
<?php
}
}
/* {/block 'intro'} */
}
