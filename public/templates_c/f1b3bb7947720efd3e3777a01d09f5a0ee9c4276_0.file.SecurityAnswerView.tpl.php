<?php
/* Smarty version 3.1.33, created on 2019-05-13 12:37:16
  from '/Applications/XAMPP/xamppfiles/htdocs/Projekt/app/views/SecurityAnswerView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5cd948dc5a9203_55625471',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f1b3bb7947720efd3e3777a01d09f5a0ee9c4276' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/Projekt/app/views/SecurityAnswerView.tpl',
      1 => 1557690507,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5cd948dc5a9203_55625471 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_17402630255cd948dc5a4ed8_62230419', 'intro');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, "main.tpl");
}
/* {block 'intro'} */
class Block_17402630255cd948dc5a4ed8_62230419 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'intro' => 
  array (
    0 => 'Block_17402630255cd948dc5a4ed8_62230419',
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
                    <h1 class="page-title"><?php echo $_smarty_tpl->tpl_vars['page_title']->value;?>
</h1>
                </header>

                <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <h3 class="thin text-center">Odzyskiwanie hasła, krok 2/2</h3>
                            <p class="text-center text-muted">Odpowiedz na pytanie: <?php echo $_smarty_tpl->tpl_vars['security_question']->value;?>
</p>
                            <hr>
                            <form action="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
checkAnswer/<?php echo $_smarty_tpl->tpl_vars['userMail']->value;?>
" method="post">
                                <input type="hidden" id="id" name="id" value="<?php echo $_smarty_tpl->tpl_vars['userId']->value;?>
">
                                <input type="hidden" id="id" name="email" value="<?php echo $_smarty_tpl->tpl_vars['userMail']->value;?>
">
                                <div class="top-margin">
                                    <label>Odpowiedź:<span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="security_answer">
                                </div>
                                <div class="top-margin">
                                    <label>Nowe hasło <span class="text-danger">*</span></label>
                                    <input type="password" class="form-control" name="password">
                                </div>
                                <div class="top-margin">
                                    <label>Powtórz hasło <span class="text-danger">*</span></label>
                                    <input type="password" class="form-control" name="password_repeat">
                                </div>
                                <hr>

                                <div class="row">
                                    <div class="col-lg-4 text-right">
                                        <button class="btn btn-action" type="submit">Zmień</button>
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
