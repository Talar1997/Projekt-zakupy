<?php
/* Smarty version 3.1.33, created on 2019-05-12 23:04:07
  from 'D:\Aplikacje\XAMPP\htdocs\Projekt\app\views\ManageUsersView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5cd88a47c7e278_63312485',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '1a7a0563556299781f4d1aa83b4ecf6480c028f9' => 
    array (
      0 => 'D:\\Aplikacje\\XAMPP\\htdocs\\Projekt\\app\\views\\ManageUsersView.tpl',
      1 => 1557694936,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5cd88a47c7e278_63312485 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_21035090065cd88a47c665f5_83026679', 'intro');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, "main.tpl");
}
/* {block 'intro'} */
class Block_21035090065cd88a47c665f5_83026679 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'intro' => 
  array (
    0 => 'Block_21035090065cd88a47c665f5_83026679',
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
            <h2 class="text-center thin">Użytkownicy</h2>
            <table id="usersValues" class="table table-striped">
                <thead>
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Username</th>
                    <th scope="col">Rola</th>
                    <th scope="col">Akcje</th>
                </tr>
                </thead>
                <tbody>
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['users']->value, 'user');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['user']->value) {
?>
                    <tr>
                        <th scope="row"><?php echo $_smarty_tpl->tpl_vars['user']->value['id'];?>
</th>
                        <td><?php echo $_smarty_tpl->tpl_vars['user']->value['login'];?>
</td>
                        <td><?php echo $_smarty_tpl->tpl_vars['user']->value['role'];?>
</td>
                        <td>
                            <a type="button" class="btn btn-light btn-sm" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
manageUsers/details/<?php echo $_smarty_tpl->tpl_vars['user']->value['id'];?>
">Szczegóły</a>
                            <a type="button" class="btn btn-light btn-sm" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
manageUsers/edit/<?php echo $_smarty_tpl->tpl_vars['user']->value['id'];?>
">Edytuj</a>
                            <a type="button" class="btn btn-danger btn-sm" onclick="deleteUser('<?php echo $_smarty_tpl->tpl_vars['user']->value['id'];?>
')">Usuń</a>
                        </td>
                    </tr>
                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                </tbody>
            </table>
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
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['users']->value, 'user');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['user']->value) {
?>
                    <?php if ($_smarty_tpl->tpl_vars['user']->value['id'] == $_smarty_tpl->tpl_vars['id']->value) {?>
                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['user']->value, 'val', false, 'key');
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
                    <?php }?>
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
                        <h3 class="thin text-center">Edycja użytkownika</h3>
                        <p class="text-center text-muted">Jeżeli nie chcesz edytować niektórych pól, pozostaw je bez zmian.</p>
                        <hr>
                        <form>
                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['users']->value, 'user');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['user']->value) {
?>
                                <?php if ($_smarty_tpl->tpl_vars['user']->value['id'] == $_smarty_tpl->tpl_vars['id']->value) {?>
                                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['user']->value, 'val', false, 'key');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['key']->value => $_smarty_tpl->tpl_vars['val']->value) {
?>
                                        <?php if ($_smarty_tpl->tpl_vars['key']->value == 'id') {?>
                                            <input type="hidden" class="form-control" id="<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
" value="<?php echo $_smarty_tpl->tpl_vars['val']->value;?>
">
                                        <?php }?>
                                        <?php if ($_smarty_tpl->tpl_vars['key']->value != 'id') {?>
                                            <div class="form-group">
                                                <label for="<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['key']->value;?>
</label>
                                                <input class="form-control" id="<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
" value="<?php echo $_smarty_tpl->tpl_vars['val']->value;?>
">
                                            </div>
                                        <?php }?>
                                    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                    <input type="submit" value="Edytuj" class="btn btn-primary">
                                <?php }?>
                            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                        </form>
                    </div>
                </div>
            </div>
            <?php }?>
        </div>
    </div>
    <?php echo '<script'; ?>
>
        $(document).ready(function () {
            $('#usersValues').DataTable();
        });
    <?php echo '</script'; ?>
>

    <?php echo '<script'; ?>
>
        function deleteUser(id) {
            var txt;
            if (confirm("Na pewno chcesz usunąć użytkownika? Nie można będzie cofnąć tej operacji")) {
                window.location.href = '<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
manageUsers/delete/'+id;
            }
        }
    <?php echo '</script'; ?>
>
<?php
}
}
/* {/block 'intro'} */
}
