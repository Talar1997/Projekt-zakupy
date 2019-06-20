<?php
/* Smarty version 3.1.33, created on 2019-06-21 00:38:22
  from 'D:\Aplikacje\XAMPP\htdocs\Projekt\app\views\ManagePlacesView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5d0c0adecafc92_34410737',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '117eb97d35b99a25e19c9a1b1df5bb3ed6ff2cd2' => 
    array (
      0 => 'D:\\Aplikacje\\XAMPP\\htdocs\\Projekt\\app\\views\\ManagePlacesView.tpl',
      1 => 1561070302,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5d0c0adecafc92_34410737 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_16495007305d0c0adec8a738_89267570', 'intro');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, "main.tpl");
}
/* {block 'intro'} */
class Block_16495007305d0c0adec8a738_89267570 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'intro' => 
  array (
    0 => 'Block_16495007305d0c0adec8a738_89267570',
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
            <h2 class="text-center thin">Miejsca</h2>

            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <h4>Wyszukiwarka</h4>
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <form method="POST" action="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
searchPlace">
                                <div class="row">
                                    <div class="col-md-4">
                                        <input type="text" class="form-control" placeholder="Nazwa sklepu">
                                    </div>
                                    <div class="col-md-4">
                                        <input type="text" class="form-control" placeholder="Adres">
                                    </div>
                                    <div class="col-md-4">
                                        <select class="form-control" name="type">
                                            <option value="default">Typ</option>
                                            <option value="default">Wszystko</option>
                                            <option value="gas_station">Stacja benzynowa</option>
                                            <option value="bar">Bar</option>
                                            <option value="gastronomy">Gastronomia</option>
                                            <option value="shop">Sklep</option>
                                        </select>
                                    </div>
                                </div>
                                <hr>
                                <label class="checkbox-inline">
                                    <input class="form-check-input" type="checkbox" value="alcohol" name="category[]">
                                    Alkohol i papierosy
                                </label>
                                <label class="checkbox-inline">
                                    <input class="form-check-input" type="checkbox" value="bread" name="category[]">
                                    Pieczywo
                                </label>
                                <label class="checkbox-inline">
                                    <input class="form-check-input" type="checkbox" value="cosmetics" name="category[]">
                                    Chemia i kosmetyki
                                </label>
                                <label class="checkbox-inline">
                                    <input class="form-check-input" type="checkbox" value="fruits" name="category[]">
                                    Owoce i warzywa
                                </label>
                                <label class="checkbox-inline">
                                    <input class="form-check-input" type="checkbox" value="meats" name="category[]">
                                    Mięso i wędliny
                                </label>
                                <label class="checkbox-inline">
                                    <input class="form-check-input" type="checkbox" value="press" name="category[]">
                                    Prasa
                                </label>
                                <hr>
                                <div class="row">
                                    <div class="col-md-12">
                                        <input type="submit" class="btn btn-primary" value="Szukaj">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <?php if (isset($_smarty_tpl->tpl_vars['details']->value)) {?>
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th scope="col">Parametr</th>
                        <th scope="col">Wartość</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['placeDetails']->value, 'val', false, 'key');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['key']->value => $_smarty_tpl->tpl_vars['val']->value) {
?>
                        <tr>
                            <td><?php echo $_smarty_tpl->tpl_vars['key']->value;?>
</td>
                            <?php if ($_smarty_tpl->tpl_vars['key']->value == "category") {?>
                                <td>
                                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['val']->value, 'v');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['v']->value) {
?>
                                        <?php echo $_smarty_tpl->tpl_vars['v']->value;?>
,
                                    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                </td>
                            <?php }?>
                            <?php if ($_smarty_tpl->tpl_vars['key']->value != "category") {?><td><?php echo $_smarty_tpl->tpl_vars['val']->value;?>
</td><?php }?>
                        </tr>
                    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                    </tbody>
                </table>
            <?php }?>

            <?php if (isset($_smarty_tpl->tpl_vars['edit']->value)) {?>
                <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <h3 class="thin text-center">Edycja miejsca</h3>
                            <p class="text-center text-muted">Jeżeli nie chcesz edytować niektórych pól, pozostaw je bez zmian.</p>
                            <hr>
                            <form method="post" action="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
placeEdit">
                                <input type="hidden" class="form-control" name="id" value="<?php echo $_smarty_tpl->tpl_vars['placeDetails']->value['id'];?>
">
                                <div class="top-margin">
                                    <label>Nazwa miejsca <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="shopName" placeholder="Pełna nazwa" value="<?php echo $_smarty_tpl->tpl_vars['placeDetails']->value['name'];?>
">
                                </div>
                                <div class="top-margin">
                                    <label>Adres <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="address" placeholder="Adres wraz z miejscowością" value="<?php echo $_smarty_tpl->tpl_vars['placeDetails']->value['address'];?>
">
                                </div>

                                <div class="form-group top-margin">
                                    <label for="type">Typ<span class="text-danger">*</span></label>
                                    <select class="form-control" name="type">
                                        <option value="gas_station" <?php if ($_smarty_tpl->tpl_vars['placeDetails']->value['type'] == 'gas_station') {?>selected<?php }?>}>Stacja benzynowa</option>
                                        <option value="bar" <?php if ($_smarty_tpl->tpl_vars['placeDetails']->value['type'] == 'bar') {?>selected<?php }?>}>Bar</option>
                                        <option value="gastronomy" <?php if ($_smarty_tpl->tpl_vars['placeDetails']->value['type'] == 'gastronomy') {?>selected<?php }?>}>Gastronomia</option>
                                        <option value="shop" <?php if ($_smarty_tpl->tpl_vars['placeDetails']->value['type'] == 'shop') {?>selected<?php }?>>Sklep</option>
                                    </select>
                                </div>

                                <div class="form-group top-margin">
                                    <label for="category">Jakie artykuły można tam nabyć?<span class="text-danger">*</span></label>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="alkohol" name="category[]"
                                                <?php if (in_array("alkohol",$_smarty_tpl->tpl_vars['placeDetails']->value['category'])) {?>
                                                    checked
                                                <?php }?>
                                        >
                                        <label class="form-check-label" for="defaultCheck1">
                                            Alkohol i papierosy
                                        </label>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="pieczywo" name="category[]"
                                                    <?php if (in_array("pieczywo",$_smarty_tpl->tpl_vars['placeDetails']->value['category'])) {?>
                                                        checked
                                                    <?php }?>
                                            >
                                            <label class="form-check-label" for="defaultCheck1">
                                                Pieczywo
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="chemia" name="category[]"
                                                    <?php if (in_array("chemia",$_smarty_tpl->tpl_vars['placeDetails']->value['category'])) {?>
                                                        checked
                                                    <?php }?>
                                            >
                                            <label class="form-check-label" for="defaultCheck1">
                                                Chemia i kosmetyki
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="owoce" name="category[]"
                                                    <?php if (in_array("owoce",$_smarty_tpl->tpl_vars['placeDetails']->value['category'])) {?>
                                                        checked
                                                    <?php }?>
                                            >
                                            <label class="form-check-label" for="defaultCheck1">
                                                Owoce i warzywa
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="mięso" name="category[]"
                                                    <?php if (in_array("mięso",$_smarty_tpl->tpl_vars['placeDetails']->value['category'])) {?>
                                                        checked
                                                    <?php }?>
                                            >
                                            <label class="form-check-label" for="defaultCheck1">
                                                Mięso i wędliny
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="prasa" name="category[]"
                                                    <?php if (in_array("prasa",$_smarty_tpl->tpl_vars['placeDetails']->value['category'])) {?>
                                                        checked
                                                    <?php }?>
                                            >
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
                                            <input type="time" class="form-control" name="time_open" value="<?php echo $_smarty_tpl->tpl_vars['placeDetails']->value['open_hour'];?>
">
                                        </div>
                                        <div class="col-md-6">
                                            <input type="time" class="form-control" name="time_close" value="<?php echo $_smarty_tpl->tpl_vars['placeDetails']->value['close_hour'];?>
">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="description">Opis (nie wymagane)</label>
                                    <textarea class="form-control" rows="3" name="description" id="description"><?php echo $_smarty_tpl->tpl_vars['placeDetails']->value['description'];?>
</textarea>
                                </div>

                                <div class="top-margin">
                                    <label>Szerokość geograficzna <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="lat" id="lat" value="<?php echo $_smarty_tpl->tpl_vars['placeDetails']->value['lat'];?>
">
                                </div>

                                <div class="top-margin">
                                    <label>Długość geograficzna <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="lng" id="lng" value="<?php echo $_smarty_tpl->tpl_vars['placeDetails']->value['lng'];?>
">
                                </div>

                                <hr>

                                <input type="submit" value="Edytuj" class="btn btn-primary">
                            </form>
                        </div>
                    </div>
                </div>
            <?php }?>
            <table id="placesValues" class="table table-striped">
                <thead>
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Nazwa</th>
                    <th scope="col">Adres</th>
                    <th scope="col">Autor</th>
                    <th scope="col">Głosy</th>
                    <th scope="col">Akcje</th>
                </tr>
                </thead>
                <tbody>
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['places']->value, 'place');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['place']->value) {
?>
                    <tr>
                        <th scope="row"><?php echo $_smarty_tpl->tpl_vars['place']->value['id'];?>
</th>
                        <td><?php echo $_smarty_tpl->tpl_vars['place']->value['name'];?>
</td>
                        <td><?php echo $_smarty_tpl->tpl_vars['place']->value['address'];?>
</td>
                        <td><a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
profile/<?php echo $_smarty_tpl->tpl_vars['place']->value['userid'];?>
"><?php echo $_smarty_tpl->tpl_vars['place']->value['login'];?>
</a></td>
                        <td><?php echo $_smarty_tpl->tpl_vars['place']->value['votes'];?>
</td>
                        <td>
                            <div class="dropdown">
                                <button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown">
                                    <span class="caret"></span></button>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
/shop/<?php echo $_smarty_tpl->tpl_vars['place']->value['id'];?>
">Podgląd</a></li>
                                    <li><a class="dropdown-item" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
managePlaces/<?php echo $_smarty_tpl->tpl_vars['offset']->value;?>
/details/<?php echo $_smarty_tpl->tpl_vars['place']->value['id'];?>
">Szczegóły</a></li>
                                    <li><a class="dropdown-item" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
managePlaces/<?php echo $_smarty_tpl->tpl_vars['offset']->value;?>
/edit/<?php echo $_smarty_tpl->tpl_vars['place']->value['id'];?>
">Edytuj</a></li>
                                    <li><a class="dropdown-item" onclick="deletePlace('<?php echo $_smarty_tpl->tpl_vars['place']->value['id'];?>
')" href="#">Usuń</a></li>
                                </ul>
                            </div>
                        </td>
                    </tr>
                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                </tbody>
            </table>

            <?php if ($_smarty_tpl->tpl_vars['previous_page']->value > 0) {?>
                <a type="button" class="btn btn-light btn-sm float-right" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
managePlaces/<?php echo $_smarty_tpl->tpl_vars['previous_page']->value;?>
">Załaduj poprzednie rekordy</a>
            <?php }?>
            <a type="button" class="btn btn-light btn-sm float-right" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
managePlaces/<?php echo $_smarty_tpl->tpl_vars['next_page']->value;?>
">Załaduj następne rekordy</a>
            <a type="button" class="btn btn-light btn-sm float-right" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
managePlaces/0">Załaduj wszystkich użytkowników</a>
        </div>
    </div>
    <?php echo '<script'; ?>
>
        $(document).ready(function () {
            $('#placesValues').DataTable();
        });
    <?php echo '</script'; ?>
>

    <?php echo '<script'; ?>
>
        function deletePlace(id) {
            if (confirm("Na pewno chcesz usunąć miejsce? Nie można będzie cofnąć tej operacji")) {
                window.location.href = '<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
managePlaces/<?php echo $_smarty_tpl->tpl_vars['offset']->value;?>
/delete/'+id;
            }
        }
    <?php echo '</script'; ?>
>
<?php
}
}
/* {/block 'intro'} */
}
