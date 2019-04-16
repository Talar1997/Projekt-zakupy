{extends file="main.tpl"}
{block name=head}
    <header id="head">
        <div class="container">
            <div class="row">
                <h1 class="lead">Zakupy w niedziele</h1>
                <p class="tagline">Sprawdź otwarte sklepy w twojej okolicy. Dodawaj nowe obiekty, bądź częścią naszej społeczności!</p>
                <p><a class="btn btn-default btn-lg" role="button" href="{$conf->action_root}generateId">DOŁĄCZ DO NAS!</a></p>
            </div>
        </div>
    </header>
{/block}

{block name=intro}
    <div class="container text-center">
        <br> <br>
        <h2 class="thin">The best place to tell people why they are here</h2>
        <p class="text-muted">
            The difference between involvement and commitment is like an eggs-and-ham breakfast:<br>
            the chicken was involved; the pig was committed.
        </p>
    </div>
{/block}

{block name=jumbotron}
    <div class="jumbotron top-space">
        <div class="container">

            <h3 class="text-center thin">Zalety naszego rozwiązania</h3>

            <div class="row">
                <div class="col-md-3 col-sm-6 highlight">
                    <div class="h-caption"><h4><i class="fa fa-cogs fa-5"></i>Bootstrap-powered</h4></div>
                    <div class="h-body text-center">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque aliquid adipisci aspernatur. Soluta quisquam dignissimos earum quasi voluptate. Amet, dignissimos, tenetur vitae dolor quam iusto assumenda hic reprehenderit?</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 highlight">
                    <div class="h-caption"><h4><i class="fa fa-flash fa-5"></i>Fat-free</h4></div>
                    <div class="h-body text-center">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores, commodi, sequi quis ad fugit omnis cumque a libero error nesciunt molestiae repellat quos perferendis numquam quibusdam rerum repellendus laboriosam reprehenderit! </p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 highlight">
                    <div class="h-caption"><h4><i class="fa fa-heart fa-5"></i>Creative Commons</h4></div>
                    <div class="h-body text-center">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem, vitae, perferendis, perspiciatis nobis voluptate quod illum soluta minima ipsam ratione quia numquam eveniet eum reprehenderit dolorem dicta nesciunt corporis?</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 highlight">
                    <div class="h-caption"><h4><i class="fa fa-smile-o fa-5"></i>Author's support</h4></div>
                    <div class="h-body text-center">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias, excepturi, maiores, dolorem quasi reprehenderit illo accusamus nulla minima repudiandae quas ducimus reiciendis odio sequi atque temporibus facere corporis eos expedita? </p>
                    </div>
                </div>
            </div> <!-- /row  -->

        </div>
    </div>
{/block}
