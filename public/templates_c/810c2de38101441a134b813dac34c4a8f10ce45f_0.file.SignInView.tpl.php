<?php
/* Smarty version 3.1.33, created on 2019-05-13 11:51:38
  from '/Applications/XAMPP/xamppfiles/htdocs/Projekt/app/views/SignInView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5cd93e2ad010e0_53474987',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '810c2de38101441a134b813dac34c4a8f10ce45f' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/Projekt/app/views/SignInView.tpl',
      1 => 1557690507,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5cd93e2ad010e0_53474987 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_4861436855cd93e2acfd045_63306064', 'intro');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, "main.tpl");
}
/* {block 'intro'} */
class Block_4861436855cd93e2acfd045_63306064 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'intro' => 
  array (
    0 => 'Block_4861436855cd93e2acfd045_63306064',
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
                    <h1 class="page-title">Zaloguj się</h1>
                </header>

                <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <h3 class="thin text-center">Zaloguj się do swojego konta</h3>
                            <p class="text-center text-muted">Aby móc korzystać z usług i funkcji serwisu, musisz zalogować się do swojego konta. Jeżeli nie posiadasz jeszcze konta, skontaktuj się z administratorem.</p>
                            <hr>

                            <form action="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
login" method="post">
                                <div class="top-margin">
                                    <label>Login <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="login">
                                </div>
                                <div class="top-margin">
                                    <label>Hasło <span class="text-danger">*</span></label>
                                    <input type="password" class="form-control" name="password">
                                </div>

                                <hr>

                                <div class="row">
                                    <div class="col-lg-4">
                                        <b><a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
register">Utwórz konto</a></b>
                                    </div>
                                    <div class="col-lg-4">
                                        <b><a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
restore">Odzyskiwanie hasła</a></b>
                                    </div>
                                    <div class="col-lg-4 text-right">
                                        <button class="btn btn-action" type="submit">Zaloguj</button>
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
