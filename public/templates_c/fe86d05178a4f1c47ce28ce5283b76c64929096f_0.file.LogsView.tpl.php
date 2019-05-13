<?php
/* Smarty version 3.1.33, created on 2019-05-13 18:54:35
  from 'D:\Aplikacje\XAMPP\htdocs\Projekt\app\views\LogsView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5cd9a14baae2e9_61131532',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'fe86d05178a4f1c47ce28ce5283b76c64929096f' => 
    array (
      0 => 'D:\\Aplikacje\\XAMPP\\htdocs\\Projekt\\app\\views\\LogsView.tpl',
      1 => 1557766408,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5cd9a14baae2e9_61131532 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_4337969215cd9a14ba9abf0_39950858', 'intro');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, "main.tpl");
}
/* {block 'intro'} */
class Block_4337969215cd9a14ba9abf0_39950858 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'intro' => 
  array (
    0 => 'Block_4337969215cd9a14ba9abf0_39950858',
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
            <?php if ($_smarty_tpl->tpl_vars['next_page']->value > 1) {?>
                <a type="button" class="btn btn-light btn-sm float-right" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
adminLogs/<?php echo $_smarty_tpl->tpl_vars['previous_page']->value;?>
">Załaduj nowsze rekordy</a>
            <?php }?>
            <a type="button" class="btn btn-light btn-sm float-right" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
adminLogs/<?php echo $_smarty_tpl->tpl_vars['next_page']->value;?>
">Załaduj starsze rekordy</a>
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
