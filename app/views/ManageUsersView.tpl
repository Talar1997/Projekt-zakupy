{extends file="main.tpl"}
{block name=intro}
    <div class="jumbotron top-space">
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="{$conf->action_root}main">Strona główna</a></li>
                <li class="active">{$page_title}</li>
            </ol>
            <h2 class="text-center thin">Użytkownicy</h2>
            <table id="usersValues" class="table table-striped">
                <thead>
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Username</th>
                    <th scope="col">Rola</th>
                    <th scope="col">Akcje</th>
                </tr>
                </thead>
                <tbody>
                {foreach $users as $user}
                    <tr>
                        <th scope="row">{$user['id']}</th>
                        <td>{$user['login']}</td>
                        <td>{$user['role']}</td>
                        <td>
                            <a type="button" class="btn btn-light btn-sm" href="{$conf->action_root}manageUsers/details/{$user['id']}">Szczegóły</a>
                            <a type="button" class="btn btn-light btn-sm" href="{$conf->action_root}manageUsers/edit/{$user['id']}">Edytuj</a>
                            <a type="button" class="btn btn-danger btn-sm" href="{$conf->action_root}manageUsers/delete/{$user['id']}">Usuń</a>
                        </td>
                    </tr>
                {/foreach}
                </tbody>
            </table>
            {if isset($details)}
                <table class="table table-hover">
                <thead>
                <tr>
                    <th scope="col">Parametr</th>
                    <th scope="col">Wartość</th>
                </tr>
                </thead>
                <tbody>
                {foreach $users as $user}
                    {if $user['id'] == $id }
                        {foreach $user as $key => $val}
                            <tr>
                                <td>{$key}</td>
                                <td>{$val}</td>
                            </tr>
                        {/foreach}
                    {/if}
                {/foreach}
                </tbody>
                </table>
            {/if}

            {if isset($edit)}
                <form>
                    {foreach $users as $user}
                        {if $user['id'] == $id }
                            {foreach $user as $key => $val}
                                {if $key != 'id'}
                                    <div class="form-group">
                                        <label for="{$key}">{$key}</label>
                                        <input class="form-control" id="{$key}" value="{$val}">
                                    </div>
                                {/if}
                            {/foreach}
                            <input type="submit" value="Edytuj" class="btn btn-primary">
                        {/if}
                    {/foreach}
                </form>
            {/if}
        </div>
    </div>
    <script>
        $(document).ready(function () {
            $('#usersValues').DataTable();
        });
    </script>
{/block}