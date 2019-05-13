<?php
/* Smarty version 3.1.33, created on 2019-05-13 11:36:33
  from '/Applications/XAMPP/xamppfiles/htdocs/Projekt/app/views/LogsView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5cd93aa1b108d0_55825749',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '5475045a10d7dbbb417d2b0c5829e482d1135575' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/Projekt/app/views/LogsView.tpl',
      1 => 1557740174,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5cd93aa1b108d0_55825749 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_8121594135cd93aa1b06a03_87314549', 'intro');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, "main.tpl");
}
/* {block 'intro'} */
class Block_8121594135cd93aa1b06a03_87314549 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'intro' => 
  array (
    0 => 'Block_8121594135cd93aa1b06a03_87314549',
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
            <h2 class="text-center thin">Logi administracyjne</h2>
            <table id="logsValues" class="table table-striped">
                <thead>
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Data</th>
                    <th scope="col">Ip</th>
                    <th scope="col">Treść</th>
                </tr>
                </thead>
                <tbody>
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['logs']->value, 'log');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['log']->value) {
?>
                    <tr>
                        <th scope="row"><?php echo $_smarty_tpl->tpl_vars['log']->value['id_log'];?>
</th>
                        <td><?php echo $_smarty_tpl->tpl_vars['log']->value['datetime'];?>
</td>
                        <td><?php echo $_smarty_tpl->tpl_vars['log']->value['ip'];?>
</td>
                        <td><?php echo $_smarty_tpl->tpl_vars['log']->value['log'];?>
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
    <?php echo '<script'; ?>
>
        $(document).ready(function () {
            $('#logsValues').DataTable( {
                "order": [[ 0, "desc" ]]
            } );
        });
    <?php echo '</script'; ?>
>
<?php
}
}
/* {/block 'intro'} */
}
