{extends file="main.tpl"}
{block name=intro}
    <header id="head" class="secondary"></header>
    <!-- container -->
    <div class="container">

        <ol class="breadcrumb">
            <li><a href="{$conf->action_root}main">Strona główna</a></li>
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
                            <p class="text-center text-muted">Odpowiedz na pytanie: {$security_question}</p>
                            <hr>
                            <form action="{$conf->action_root}checkAnswer/{$userMail}" method="post">
                                <input type="hidden" id="id" name="id" value="{$userId}">
                                <input type="hidden" id="id" name="email" value="{$userMail}">
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

{/block}