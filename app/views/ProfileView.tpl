{extends file="main.tpl"}
{block name=intro}
    <div class="jumbotron top-space">
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="{$conf->action_root}main">Strona główna</a></li>
                <li class="active">{$page_title}</li>
            </ol>
            <h2 class="text-center thin">Użytkownicy</h2>
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th scope="col">Parametr</th>
                        <th scope="col">Wartość</th>
                    </tr>
                    </thead>
                    <tbody>
                    {foreach $profile as $key => $val}
                        <tr>
                            <td>{$key}</td>
                            <td>{$val}</td>
                        </tr>
                    {/foreach}
                    </tbody>
                </table>
        </div>
    </div>
{/block}