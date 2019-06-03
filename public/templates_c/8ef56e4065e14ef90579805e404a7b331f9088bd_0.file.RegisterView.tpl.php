<?php
/* Smarty version 3.1.33, created on 2019-06-02 18:28:24
  from 'D:\Aplikacje\XAMPP\htdocs\Projekt\app\views\RegisterView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5cf3f928c38228_23322232',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '8ef56e4065e14ef90579805e404a7b331f9088bd' => 
    array (
      0 => 'D:\\Aplikacje\\XAMPP\\htdocs\\Projekt\\app\\views\\RegisterView.tpl',
      1 => 1557759569,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5cf3f928c38228_23322232 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_11939760595cf3f928c30cf6_85150840', 'intro');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, "main.tpl");
}
/* {block 'intro'} */
class Block_11939760595cf3f928c30cf6_85150840 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'intro' => 
  array (
    0 => 'Block_11939760595cf3f928c30cf6_85150840',
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
                    <h1 class="page-title">Utwórz nowe konto</h1>
                </header>

                <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <h3 class="thin text-center">Utwórz nowe konto</h3>
                            <p class="text-center text-muted">Wypełnij wszystkie pola i zatwierdź, by utworzyć nowe konto.</p>
                            <hr>

                            <form action="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
register" method="post">
                                <div class="top-margin">
                                    <label>Adres email <span class="text-danger">*</span></label>
                                    <input type="email" class="form-control" name="email">
                                </div>
                                <div class="top-margin">
                                    <label>Login <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="login">
                                </div>
                                <div class="top-margin">
                                    <label>Hasło <span class="text-danger">*</span></label>
                                    <input type="password" class="form-control" name="password">
                                </div>
                                <div class="top-margin">
                                    <label>Powtórz hasło <span class="text-danger">*</span></label>
                                    <input type="password" class="form-control" name="password_repeat">
                                </div>

                                <div class="top-margin">
                                    <label>Pytanie pomocnicze (do odzyskiwania hasła)<span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="security_question">
                                </div>

                                <div class="top-margin">
                                    <label>Odpowiedź na pytanie<span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="security_answer">
                                </div>

                                <hr>

                                <div class="row">
                                    <div class="col-lg-4">
                                        <b><a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
login">Masz konto? Zaloguj się.</a></b>
                                    </div>
                                    <div class="col-lg-8 text-right">
                                        <button class="btn btn-action" type="submit">Utwórz konto</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>

            </article>
            <!-- /Article -->

            <div class="space"> . </div>
        </div>

    </div>	<!-- /container -->

<?php
}
}
/* {/block 'intro'} */
}
