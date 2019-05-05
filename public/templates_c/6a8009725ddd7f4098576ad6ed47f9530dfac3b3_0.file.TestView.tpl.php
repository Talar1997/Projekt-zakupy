<?php
/* Smarty version 3.1.33, created on 2019-05-05 22:20:23
  from 'D:\Aplikacje\XAMPP\htdocs\Projekt\app\views\TestView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5ccf45872035d5_86901129',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '6a8009725ddd7f4098576ad6ed47f9530dfac3b3' => 
    array (
      0 => 'D:\\Aplikacje\\XAMPP\\htdocs\\Projekt\\app\\views\\TestView.tpl',
      1 => 1557087616,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5ccf45872035d5_86901129 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_8255593485ccf45871f73d7_87749096', 'intro');
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_6435011375ccf45872004e4_10570893', 'jumbotron');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, "main.tpl");
}
/* {block 'intro'} */
class Block_8255593485ccf45871f73d7_87749096 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'intro' => 
  array (
    0 => 'Block_8255593485ccf45871f73d7_87749096',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="jumbotron top-space">
        <div class="container">
            <h2 class="text-center thin">Values</h2>
            <table class="table table-hover">
                <thead>
                <tr>
                    <th scope="col">Key</th>
                    <th scope="col">Value</th>
                </tr>
                </thead>
                <tbody>
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['data']->value, 'val', false, 'key');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['key']->value => $_smarty_tpl->tpl_vars['val']->value) {
?>
                    <tr>
                        <td><?php echo $_smarty_tpl->tpl_vars['key']->value;?>
</td>
                        <td><?php echo $_smarty_tpl->tpl_vars['val']->value;?>
</td>
                    </tr>
                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                </tbody>
            </table>
        </div>
    </div>
<?php
}
}
/* {/block 'intro'} */
/* {block 'jumbotron'} */
class Block_6435011375ccf45872004e4_10570893 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'jumbotron' => 
  array (
    0 => 'Block_6435011375ccf45872004e4_10570893',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div id="map"></div>
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

        function initMap() {
            var map = new google.maps.Map(document.getElementById('map'), {
                center: new google.maps.LatLng(<?php echo $_smarty_tpl->tpl_vars['data']->value["lat"];?>
, <?php echo $_smarty_tpl->tpl_vars['data']->value["lng"];?>
),
                zoom: 15
            });
            var infoWindow = new google.maps.InfoWindow;

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
<?php
}
}
/* {/block 'jumbotron'} */
}