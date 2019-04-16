{extends file="main.tpl"}
{block name=head}
    <header id="head">
        <div class="container">
            <div class="row">
                <h1 class="lead">Zakupy w niedziele</h1>
                <p class="tagline">Sprawdź otwarte sklepy w twojej okolicy. Dodawaj nowe obiekty, bądź częścią ogromnej społeczności!</p>
                <p><a class="btn btn-default btn-lg" role="button" href="{$conf->action_root}generateId">WYSZUKAJ SKLEP W OKOLICY</a></p>
            </div>
        </div>
    </header>
{/block}

{block name=intro}
    <div class="container text-center">
        <br> <br>
        <h2 class="thin">Z nami życie staje się prostsze</h2>
        <p class="text-muted">
            Jeżeli coś ci umknęło i zapomniałeś zrobić zakupy wcześniej, to nic straconego!<br>
            Wystarczy się zarejestrować i znaleźć to, czego potrzebujesz!
        </p>
    </div>
{/block}

{block name=jumbotron}
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
{/block}
