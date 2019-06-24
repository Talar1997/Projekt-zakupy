{extends file="main.tpl"}
{block name=intro}
    <div class="jumbotron top-space">
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="{$conf->action_root}main">Strona główna</a></li>
                <li class="active">{$page_title}</li>
            </ol>
            <h2 class="text-center thin">Profil użytkownika <b>{$profile['login']}</b></h2>
            <div class="col-md-12">
                <!-- resumt -->
                <div class="panel panel-default">
                    <div class="panel-heading resume-heading">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="col-xs-12 col-sm-4">
                                    <figure>
                                        <img class="img-circle img-responsive" alt="" src="{$conf->avatars}/{$profile['avatar_ref']}">
                                    </figure>
                                </div>
                                <div class="col-xs-12 col-sm-8">
                                    <ul class="list-group">
                                        <li class="list-group-item">Nazwa: {$profile['login']}</li>
                                        <li class="list-group-item">Grupa:
                                            {if {$profile['name']=='admin'}}<span class="admin">Administratorzy</span>{/if}
                                            {if {$profile['name']=='moderator'}}<span class="moderator">Moderatorzy</span>{/if}
                                            {if {$profile['name']=='user'}}<span class="user">Użytkownicy</span>{/if}
                                            {if {$profile['name']=='zbanowany'}}<span class="banned">Zbanowani</span>{/if}
                                        </li>
                                        <li class="list-group-item">Data utworzenia konta: {$profile['register_date']}</li>
                                        <li class="list-group-item">Reputacja: {$profile['reputation']}</li>
                                        {if core\RoleUtils::inRole("admin") || core\RoleUtils::inRole("moderator")}
                                            <li class="list-group-item">Id: {$profile['id']}</li>
                                            <li class="list-group-item">Ostatnio zalogowany: {$profile['last_login']}</li>
                                            <li class="list-group-item">Adres email: {$profile['email']}</li>
                                            <li class="list-group-item">
                                                <a href="{$conf->action_root}manageUsers/1/edit/{$profile['id']}"><button class="btn btn-primary">Edytuj użytkownika</button></a>
                                            </li>
                                        {/if}
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    {if !empty($places)}
                        <div class="bs-callout bs-callout-danger">
                            <h4>Dodane miejsca</h4>
                            <table class="table table-striped table-responsive ">
                                <thead>
                                <tr>
                                    <th>Nazwa</th>
                                    <th>Adres</th>
                                    <th>Głosy</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                {foreach $places as $p}
                                    <tr>
                                        <td>{$p['name']}</td>
                                        <td>{$p['address']}</td>
                                        <td>{$p['votes']}</td>
                                        <td><a href="{$conf->action_root}shop/{$p['id']}">Szczegóły</a></td>
                                    </tr>
                                {/foreach}
                                </tbody>
                            </table>
                        </div>
                    {/if}

                </div>
                {if empty($places)}
                    <h3 class="text-center thin">Użytkownik nie dodał jeszcze żadnego miejsca!</h3>
                {/if}
            </div>
        </div>
    </div>
{/block}