<?php
/* Smarty version 3.1.33, created on 2019-04-18 18:16:54
  from 'D:\Aplikacje\XAMPP\htdocs\Projekt\app\views\SecurityAnswerView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5cb8a2f674fe46_89028074',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'b640aa161df29a9357f5cf607543ab1aa83ea03c' => 
    array (
      0 => 'D:\\Aplikacje\\XAMPP\\htdocs\\Projekt\\app\\views\\SecurityAnswerView.tpl',
      1 => 1555604202,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5cb8a2f674fe46_89028074 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_8320325705cb8a2f674aba7_66202513', 'intro');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, "main.tpl");
}
/* {block 'intro'} */
class Block_8320325705cb8a2f674aba7_66202513 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'intro' => 
  array (
    0 => 'Block_8320325705cb8a2f674aba7_66202513',
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
            <li class="active">Resetowanie hasła 2/2</li>
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
