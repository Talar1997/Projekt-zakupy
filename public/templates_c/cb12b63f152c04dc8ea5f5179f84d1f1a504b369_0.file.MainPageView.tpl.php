<?php
/* Smarty version 3.1.33, created on 2019-04-16 23:03:36
  from 'D:\Aplikacje\XAMPP\htdocs\Projekt\app\views\MainPageView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5cb64328b03876_54621326',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'cb12b63f152c04dc8ea5f5179f84d1f1a504b369' => 
    array (
      0 => 'D:\\Aplikacje\\XAMPP\\htdocs\\Projekt\\app\\views\\MainPageView.tpl',
      1 => 1555440216,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5cb64328b03876_54621326 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_19377547835cb64328afe538_14883860', 'head');
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_7165781205cb64328b02850_60736405', 'intro');
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_6561643165cb64328b03098_09748454', 'jumbotron');
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, "main.tpl");
}
/* {block 'head'} */
class Block_19377547835cb64328afe538_14883860 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head' => 
  array (
    0 => 'Block_19377547835cb64328afe538_14883860',
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
generateId">WYSZUKAJ SKLEP W OKOLICY</a></p>
            </div>
        </div>
    </header>
<?php
}
}
/* {/block 'head'} */
/* {block 'intro'} */
class Block_7165781205cb64328b02850_60736405 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'intro' => 
  array (
    0 => 'Block_7165781205cb64328b02850_60736405',
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
class Block_6561643165cb64328b03098_09748454 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'jumbotron' => 
  array (
    0 => 'Block_6561643165cb64328b03098_09748454',
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
