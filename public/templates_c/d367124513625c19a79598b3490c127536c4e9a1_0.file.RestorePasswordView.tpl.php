<?php
/* Smarty version 3.1.33, created on 2019-06-05 23:48:01
  from 'D:\Aplikacje\XAMPP\htdocs\Projekt\app\views\RestorePasswordView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5cf83891c018f4_44780275',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd367124513625c19a79598b3490c127536c4e9a1' => 
    array (
      0 => 'D:\\Aplikacje\\XAMPP\\htdocs\\Projekt\\app\\views\\RestorePasswordView.tpl',
      1 => 1557759569,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5cf83891c018f4_44780275 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_8137662335cf83891bfc8b5_82458048', 'intro');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, "main.tpl");
}
/* {block 'intro'} */
class Block_8137662335cf83891bfc8b5_82458048 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'intro' => 
  array (
    0 => 'Block_8137662335cf83891bfc8b5_82458048',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <header id="head" class="secondary"></header>
    <!-- container -->
    <div class="container">

        <ol class="breadcrumb">
            <li><a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
main">Strona główna</a></li>
            <li class="active"><?php echo $_smarty_tpl->tpl_vars['page_title']->value;?>
</li>
        </ol>

        <div class="row">

            <!-- Article main content -->
            <article class="col-xs-12 maincontent">
                <header class="page-header">
                    <h1 class="page-title">Resetowanie hasła</h1>
                </header>

                <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <h3 class="thin text-center">Odzyskiwanie hasła, krok 1/2</h3>
                            <p class="text-center text-muted">By zresetować hasło do swojego konta postępuj zgodnie ze wskazówkami.</p>
                            <hr>

                            <form action="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
restore" method="post">
                                <div class="top-margin">
                                    <label>Adres e-mail<span class="text-danger">*</span></label>
                                    <input type="email" class="form-control" name="email">
                                </div>
                                <hr>

                                <div class="row">
                                    <div class="col-lg-4 text-right">
                                        <button class="btn btn-action" type="submit">Przejdź dalej</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>

            </article>
            <!-- /Article -->

            <div class="space"> . </div>
            <div class="space"> . </div>
        </div>

    </div>	<!-- /container -->

<?php
}
}
/* {/block 'intro'} */
}