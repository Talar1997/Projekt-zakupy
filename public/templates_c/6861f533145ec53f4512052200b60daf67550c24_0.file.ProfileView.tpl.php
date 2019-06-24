<?php
/* Smarty version 3.1.33, created on 2019-06-24 11:45:03
  from 'D:\Aplikacje\XAMPP\htdocs\Projekt\app\views\ProfileView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5d109b9f77c831_50055548',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '6861f533145ec53f4512052200b60daf67550c24' => 
    array (
      0 => 'D:\\Aplikacje\\XAMPP\\htdocs\\Projekt\\app\\views\\ProfileView.tpl',
      1 => 1561369500,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5d109b9f77c831_50055548 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_17378183585d109b9f764698_72406202', 'intro');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, "main.tpl");
}
/* {block 'intro'} */
class Block_17378183585d109b9f764698_72406202 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'intro' => 
  array (
    0 => 'Block_17378183585d109b9f764698_72406202',
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
            <h2 class="text-center thin">Profil użytkownika <b><?php echo $_smarty_tpl->tpl_vars['profile']->value['login'];?>
</b></h2>
            <div class="col-md-12">
                <!-- resumt -->
                <div class="panel panel-default">
                    <div class="panel-heading resume-heading">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="col-xs-12 col-sm-4">
                                    <figure>
                                        <img class="img-circle img-responsive" alt="" src="<?php echo $_smarty_tpl->tpl_vars['conf']->value->avatars;?>
/<?php echo $_smarty_tpl->tpl_vars['profile']->value['avatar_ref'];?>
">
                                    </figure>
                                </div>
                                <div class="col-xs-12 col-sm-8">
                                    <ul class="list-group">
                                        <li class="list-group-item">Nazwa: <?php echo $_smarty_tpl->tpl_vars['profile']->value['login'];?>
</li>
                                        <li class="list-group-item">Grupa:
                                            <?php ob_start();
echo $_smarty_tpl->tpl_vars['profile']->value['name'] == 'admin';
$_prefixVariable1 = ob_get_clean();
if ($_prefixVariable1) {?><span class="admin">Administratorzy</span><?php }?>
                                            <?php ob_start();
echo $_smarty_tpl->tpl_vars['profile']->value['name'] == 'moderator';
$_prefixVariable2 = ob_get_clean();
if ($_prefixVariable2) {?><span class="moderator">Moderatorzy</span><?php }?>
                                            <?php ob_start();
echo $_smarty_tpl->tpl_vars['profile']->value['name'] == 'user';
$_prefixVariable3 = ob_get_clean();
if ($_prefixVariable3) {?><span class="user">Użytkownicy</span><?php }?>
                                            <?php ob_start();
echo $_smarty_tpl->tpl_vars['profile']->value['name'] == 'zbanowany';
$_prefixVariable4 = ob_get_clean();
if ($_prefixVariable4) {?><span class="banned">Zbanowani</span><?php }?>
                                        </li>
                                        <li class="list-group-item">Data utworzenia konta: <?php echo $_smarty_tpl->tpl_vars['profile']->value['register_date'];?>
</li>
                                        <li class="list-group-item">Reputacja: <?php echo $_smarty_tpl->tpl_vars['profile']->value['reputation'];?>
</li>
                                        <?php if (core\RoleUtils::inRole("admin") || core\RoleUtils::inRole("moderator")) {?>
                                            <li class="list-group-item">Id: <?php echo $_smarty_tpl->tpl_vars['profile']->value['id'];?>
</li>
                                            <li class="list-group-item">Ostatnio zalogowany: <?php echo $_smarty_tpl->tpl_vars['profile']->value['last_login'];?>
</li>
                                            <li class="list-group-item">Adres email: <?php echo $_smarty_tpl->tpl_vars['profile']->value['email'];?>
</li>
                                            <li class="list-group-item">
                                                <a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
manageUsers/1/edit/<?php echo $_smarty_tpl->tpl_vars['profile']->value['id'];?>
"><button class="btn btn-primary">Edytuj użytkownika</button></a>
                                            </li>
                                        <?php }?>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php if (!empty($_smarty_tpl->tpl_vars['places']->value)) {?>
                        <div class="bs-callout bs-callout-danger">
                            <h4>Dodane miejsca</h4>
                            <table class="table table-striped table-responsive ">
                                <thead>
                                <tr>
                                    <th>Nazwa</th>
                                    <th>Adres</th>
                                    <th>Głosy</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['places']->value, 'p');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['p']->value) {
?>
                                    <tr>
                                        <td><?php echo $_smarty_tpl->tpl_vars['p']->value['name'];?>
</td>
                                        <td><?php echo $_smarty_tpl->tpl_vars['p']->value['address'];?>
</td>
                                        <td><?php echo $_smarty_tpl->tpl_vars['p']->value['votes'];?>
</td>
                                        <td><a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
shop/<?php echo $_smarty_tpl->tpl_vars['p']->value['id'];?>
">Szczegóły</a></td>
                                    </tr>
                                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                </tbody>
                            </table>
                        </div>
                    <?php }?>

                </div>
                <?php if (empty($_smarty_tpl->tpl_vars['places']->value)) {?>
                    <h3 class="text-center thin">Użytkownik nie dodał jeszcze żadnego miejsca!</h3>
                <?php }?>
            </div>
        </div>
    </div>
<?php
}
}
/* {/block 'intro'} */
}
