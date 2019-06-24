<?php
/* Smarty version 3.1.33, created on 2019-06-24 11:27:38
  from 'D:\Aplikacje\XAMPP\htdocs\Projekt\app\views\ResultsView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5d10978aa8cb73_79921261',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '136ce9f7bd55adb272b9845c320081614fbce788' => 
    array (
      0 => 'D:\\Aplikacje\\XAMPP\\htdocs\\Projekt\\app\\views\\ResultsView.tpl',
      1 => 1561368440,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5d10978aa8cb73_79921261 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_18979680265d10978aa74197_24019882', 'intro');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, "main.tpl");
}
/* {block 'intro'} */
class Block_18979680265d10978aa74197_24019882 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'intro' => 
  array (
    0 => 'Block_18979680265d10978aa74197_24019882',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <header id="head" class="secondary"></header>
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
main">Strona główna</a></li>
                <li class="active"><?php echo $_smarty_tpl->tpl_vars['page_title']->value;?>
</li>
            </ol>
            <h2 class="text-center thin">Wyszukiwarka</h2>

            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <h4>Wyszukiwarka</h4>
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <form method="GET" action="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
search">
                                <div class="row">
                                    <div class="col-md-4">
                                        <input type="text" list="nameHints" name="shopName" class="form-control" placeholder="Nazwa sklepu"
                                               onkeyup="ajaxReloadElement('<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
hint?column=name&value='+this.value, 'nameHints', doNothing)">
                                        <datalist id="nameHints">
                                        </datalist>
                                    </div>
                                    <div class="col-md-4">
                                        <input type="text" list="addressHints" name="address" class="form-control" placeholder="Adres"
                                               onkeyup="ajaxReloadElement('<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
hint?column=address&value='+this.value, 'addressHints', doNothing)">
                                        <datalist id="addressHints">
                                        </datalist>
                                    </div>
                                    <div class="col-md-4">
                                        <select class="form-control" name="type">
                                            <option value="">Wszystko</option>
                                            <option value="gas_station">Stacja benzynowa</option>
                                            <option value="bar">Bar</option>
                                            <option value="gastronomy">Gastronomia</option>
                                            <option value="shop">Sklep</option>
                                        </select>
                                    </div>
                                </div>
                                <hr>
                                <label class="checkbox-inline">
                                    <input class="form-check-input" type="checkbox" value="alkohol" name="category[]">
                                    Alkohol i papierosy
                                </label>
                                <label class="checkbox-inline">
                                    <input class="form-check-input" type="checkbox" value="pieczywo" name="category[]">
                                    Pieczywo
                                </label>
                                <label class="checkbox-inline">
                                    <input class="form-check-input" type="checkbox" value="chemia" name="category[]">
                                    Chemia i kosmetyki
                                </label>
                                <label class="checkbox-inline">
                                    <input class="form-check-input" type="checkbox" value="owoce" name="category[]">
                                    Owoce i warzywa
                                </label>
                                <label class="checkbox-inline">
                                    <input class="form-check-input" type="checkbox" value="mięso" name="category[]">
                                    Mięso i wędliny
                                </label>
                                <label class="checkbox-inline">
                                    <input class="form-check-input" type="checkbox" value="prasa" name="category[]">
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
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <h4>Wyszukane miejsca</h4>
                    <?php if (isset($_smarty_tpl->tpl_vars['query']->value) || count($_smarty_tpl->tpl_vars['query']->value) > 0) {?>
                        <ul class="list-group">
                            <?php if (count($_smarty_tpl->tpl_vars['query']->value) > 0) {?>
                                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['query']->value, 'place');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['place']->value) {
?>
                                    <li class="list-group-item">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
shop/<?php echo $_smarty_tpl->tpl_vars['place']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['place']->value['name'];?>
</a>
                                            </div>
                                            <div class="col-md-3">
                                                <?php echo $_smarty_tpl->tpl_vars['place']->value['address'];?>

                                            </div>
                                            <div class="col-md-2">
                                                <?php if ($_smarty_tpl->tpl_vars['place']->value['type'] == "shop") {?>Sklep<?php }?>
                                                <?php if ($_smarty_tpl->tpl_vars['place']->value['type'] == "gas_station") {?>Stacja benzynowa<?php }?>
                                                <?php if ($_smarty_tpl->tpl_vars['place']->value['type'] == "gastronomy") {?>Gastronomia<?php }?>
                                                <?php if ($_smarty_tpl->tpl_vars['place']->value['type'] == "bar") {?>Bar<?php }?>
                                            </div>
                                            <div class="col-md-2">
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
                                            </div>
                                            <div class="col-md-1">
                                                Głosy: <?php echo $_smarty_tpl->tpl_vars['place']->value['votes'];?>

                                            </div>
                                        </div>
                                    </li>
                                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                            <?php }?>
                        </ul>
                    <?php }?>
                    <?php if (!isset($_smarty_tpl->tpl_vars['query']->value) || count($_smarty_tpl->tpl_vars['query']->value) == 0) {?>
                        <h5>Brak miejsc do wyświetlenia!</h5>
                    <?php }?>
                </div>
            </div>
        </div>
    <?php echo '<script'; ?>
>
        function doNothing() {
            return false;
        }
    <?php echo '</script'; ?>
>
<?php
}
}
/* {/block 'intro'} */
}
