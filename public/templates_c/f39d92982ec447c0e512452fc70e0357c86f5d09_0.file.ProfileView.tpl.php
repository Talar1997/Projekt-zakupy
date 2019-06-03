<?php
/* Smarty version 3.1.33, created on 2019-06-03 12:12:11
  from '/Applications/XAMPP/xamppfiles/htdocs/Projekt/app/views/ProfileView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5cf4f27be22a00_94926121',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f39d92982ec447c0e512452fc70e0357c86f5d09' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/Projekt/app/views/ProfileView.tpl',
      1 => 1559556730,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5cf4f27be22a00_94926121 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_14576455565cf4f27be1ac09_60590007', 'intro');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, "main.tpl");
}
/* {block 'intro'} */
class Block_14576455565cf4f27be1ac09_60590007 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'intro' => 
  array (
    0 => 'Block_14576455565cf4f27be1ac09_60590007',
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
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th scope="col">Parametr</th>
                        <th scope="col">Wartość</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['profile']->value, 'val', false, 'key');
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
}
