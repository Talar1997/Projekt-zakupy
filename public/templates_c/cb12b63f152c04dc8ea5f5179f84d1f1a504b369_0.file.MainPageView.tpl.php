<?php
/* Smarty version 3.1.33, created on 2019-04-18 00:48:39
  from 'D:\Aplikacje\XAMPP\htdocs\Projekt\app\views\MainPageView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5cb7ad470817d0_29982821',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'cb12b63f152c04dc8ea5f5179f84d1f1a504b369' => 
    array (
      0 => 'D:\\Aplikacje\\XAMPP\\htdocs\\Projekt\\app\\views\\MainPageView.tpl',
      1 => 1555541184,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5cb7ad470817d0_29982821 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_13481758935cb7ad4707c6d2_50343375', 'head');
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_7910446015cb7ad47080666_19360834', 'intro');
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_19377307285cb7ad47080e78_41224744', 'jumbotron');
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, "main.tpl");
}
/* {block 'head'} */
class Block_13481758935cb7ad4707c6d2_50343375 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head' => 
  array (
    0 => 'Block_13481758935cb7ad4707c6d2_50343375',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <header id="head">
        <div class="container">
            <div class="row">
                <h1 class="lead">Zakupy w niedziele</h1>
                <p class="tagline">Sprawdź otwarte sklepy w twojej okolicy. Dodawaj nowe obiekty, bądź częścią ogromnej społeczności!</p>
                <p><a class="btn btn-default btn-lg" role="button" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
panel">WYSZUKAJ SKLEP W OKOLICY</a></p>
            </div>
        </div>
    </header>
<?php
}
}
/* {/block 'head'} */
/* {block 'intro'} */
class Block_7910446015cb7ad47080666_19360834 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'intro' => 
  array (
    0 => 'Block_7910446015cb7ad47080666_19360834',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="container text-center">
        <br> <br>
        <h2 class="thin">Z nami życie staje się prostsze</h2>
        <p class="text-muted">
            Jeżeli coś ci umknęło i zapomniałeś zrobić zakupy wcześniej, to nic straconego!<br>
            Wystarczy się zarejestrować i znaleźć to, czego potrzebujesz!
        </p>
    </div>
<?php
}
}
/* {/block 'intro'} */
/* {block 'jumbotron'} */
class Block_19377307285cb7ad47080e78_41224744 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'jumbotron' => 
  array (
    0 => 'Block_19377307285cb7ad47080e78_41224744',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="jumbotron top-space">
        <div class="container">

            <h3 class="text-center thin">Dlaczego akurat my?</h3>

            <div class="row">
                <div class="col-md-3 col-sm-6 highlight">
                    <div class="h-caption"><h4><i class="fa fa-cogs fa-5"></i>Zaawansowane mechanizmy</h4></div>
                    <div class="h-body text-center">
                        <p>Nasz portal wyposażony jest w zaawansowane mechanizmy i algorytmy, które pozwolą ci w błyskawicznym tempie odnaleźć to czego szukasz! Zdecydowanie znajdziesz tu coś, czego nie ma na żadnym innym portalu tego typu!</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 highlight">
                    <div class="h-caption"><h4><i class="fa fa-flash fa-5"></i>Ogromna baza</h4></div>
                    <div class="h-body text-center">
                        <p>Zrzeszamy masę ludzi z całego kraju, dzięki czemu nasza baza sklepów otwartych w niedziele jest bardzo duża. Z każdym dniem poszerzamy swój zbiór o setki nowych sklepów z każdego zakątka polski!</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 highlight">
                    <div class="h-caption"><h4><i class="fa fa-heart fa-5"></i>Pomocna społeczność</h4></div>
                    <div class="h-body text-center">
                        <p>Masa ludzi, którzy chcą udzielić wsparcia właśnie tobie! Nie daj się dłużej namawiać, może i Tobie uda się komuś pomóc?</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 highlight">
                    <div class="h-caption"><h4><i class="fa fa-smile-o fa-5"></i>System reputacji</h4></div>
                    <div class="h-body text-center">
                        <p>Zbieraj punkty reputacji za dodane sklepy i wystawione komentarze! Zostać lokalnym przewodnikiem po swojej okolicy i poszerzaj razem z nami naszą bazę sklepów otwartych w niedzielę. </p>
                    </div>
                </div>
            </div> <!-- /row  -->

        </div>
    </div>
<?php
}
}
/* {/block 'jumbotron'} */
}
