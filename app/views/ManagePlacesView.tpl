{extends file="main.tpl"}
{block name=intro}
    <div class="jumbotron top-space">
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="{$conf->action_root}main">Strona główna</a></li>
                <li class="active">{$page_title}</li>
            </ol>
            <h2 class="text-center thin">Miejsca</h2>

            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <h4>Wyszukiwarka</h4>
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <form method="GET" action="{$conf->action_root}search">
                                <div class="row">
                                    <div class="col-md-4">
                                        <input type="text" name="shopName" class="form-control" placeholder="Nazwa sklepu">
                                    </div>
                                    <div class="col-md-4">
                                        <input type="text" name="address" class="form-control" placeholder="Adres">
                                    </div>
                                    <div class="col-md-4">
                                        <select class="form-control" name="type">
                                            <option value="">Wszystko</option>
                                            <option value="gas_station">Stacja benzynowa</option>
                                            <option value="bar">Bar</option>
                                            <option value="gastronomy">Gastronomia</option>
                                            <option value="shop">Sklep</option>
                                        </select>
                                    </div>
                                </div>
                                <hr>
                                <label class="checkbox-inline">
                                    <input class="form-check-input" type="checkbox" value="alkohol" name="category[]">
                                    Alkohol i papierosy
                                </label>
                                <label class="checkbox-inline">
                                    <input class="form-check-input" type="checkbox" value="pieczywo" name="category[]">
                                    Pieczywo
                                </label>
                                <label class="checkbox-inline">
                                    <input class="form-check-input" type="checkbox" value="chemia" name="category[]">
                                    Chemia i kosmetyki
                                </label>
                                <label class="checkbox-inline">
                                    <input class="form-check-input" type="checkbox" value="owoce" name="category[]">
                                    Owoce i warzywa
                                </label>
                                <label class="checkbox-inline">
                                    <input class="form-check-input" type="checkbox" value="mięso" name="category[]">
                                    Mięso i wędliny
                                </label>
                                <label class="checkbox-inline">
                                    <input class="form-check-input" type="checkbox" value="prasa" name="category[]">
                                    Prasa
                                </label>
                                <hr>
                        </div>
                    </div>
                </div>
            </div>

            {if isset($details)}
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th scope="col">Parametr</th>
                        <th scope="col">Wartość</th>
                    </tr>
                    </thead>
                    <tbody>
                    {foreach $placeDetails as $key => $val}
                        <tr>
                            <td>{$key}</td>
                            {if $key == "category"}
                                <td>
                                    {foreach $val as $v}
                                        {$v},
                                    {/foreach}
                                </td>
                            {/if}
                            {if $key != "category"}<td>{$val}</td>{/if}
                        </tr>
                    {/foreach}
                    </tbody>
                </table>
            {/if}

            {if isset($edit)}
                <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <h3 class="thin text-center">Edycja miejsca</h3>
                            <p class="text-center text-muted">Jeżeli nie chcesz edytować niektórych pól, pozostaw je bez zmian.</p>
                            <hr>
                            <form method="post" action="{$conf->action_root}placeEdit">
                                <input type="hidden" class="form-control" name="id" value="{$placeDetails['id']}">
                                <div class="top-margin">
                                    <label>Nazwa miejsca <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="shopName" placeholder="Pełna nazwa" value="{$placeDetails['name']}">
                                </div>
                                <div class="top-margin">
                                    <label>Adres <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="address" placeholder="Adres wraz z miejscowością" value="{$placeDetails['address']}">
                                </div>

                                <div class="form-group top-margin">
                                    <label for="type">Typ<span class="text-danger">*</span></label>
                                    <select class="form-control" name="type">
                                        <option value="gas_station" {if $placeDetails['type'] == 'gas_station'}selected{/if}}>Stacja benzynowa</option>
                                        <option value="bar" {if $placeDetails['type'] == 'bar'}selected{/if}}>Bar</option>
                                        <option value="gastronomy" {if $placeDetails['type'] == 'gastronomy'}selected{/if}}>Gastronomia</option>
                                        <option value="shop" {if $placeDetails['type'] == 'shop'}selected{/if}>Sklep</option>
                                    </select>
                                </div>

                                <div class="form-group top-margin">
                                    <label for="category">Jakie artykuły można tam nabyć?<span class="text-danger">*</span></label>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="alkohol" name="category[]"
                                                {if in_array("alkohol", $placeDetails['category'])}
                                                    checked
                                                {/if}
                                        >
                                        <label class="form-check-label" for="defaultCheck1">
                                            Alkohol i papierosy
                                        </label>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="pieczywo" name="category[]"
                                                    {if in_array("pieczywo", $placeDetails['category'])}
                                                        checked
                                                    {/if}
                                            >
                                            <label class="form-check-label" for="defaultCheck1">
                                                Pieczywo
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="chemia" name="category[]"
                                                    {if in_array("chemia", $placeDetails['category'])}
                                                        checked
                                                    {/if}
                                            >
                                            <label class="form-check-label" for="defaultCheck1">
                                                Chemia i kosmetyki
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="owoce" name="category[]"
                                                    {if in_array("owoce", $placeDetails['category'])}
                                                        checked
                                                    {/if}
                                            >
                                            <label class="form-check-label" for="defaultCheck1">
                                                Owoce i warzywa
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="mięso" name="category[]"
                                                    {if in_array("mięso", $placeDetails['category'])}
                                                        checked
                                                    {/if}
                                            >
                                            <label class="form-check-label" for="defaultCheck1">
                                                Mięso i wędliny
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="prasa" name="category[]"
                                                    {if in_array("prasa", $placeDetails['category'])}
                                                        checked
                                                    {/if}
                                            >
                                            <label class="form-check-label" for="defaultCheck1">
                                                Prasa
                                            </label>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group top-margin">
                                    <label>Godziny otwarcia (Od, do)<span class="text-danger">*</span></label>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <input type="time" class="form-control" name="time_open" value="{$placeDetails['open_hour']}">
                                        </div>
                                        <div class="col-md-6">
                                            <input type="time" class="form-control" name="time_close" value="{$placeDetails['close_hour']}">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="description">Opis (nie wymagane)</label>
                                    <textarea class="form-control" rows="3" name="description" id="description">{$placeDetails['description']}</textarea>
                                </div>

                                <div class="top-margin">
                                    <label>Szerokość geograficzna <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="lat" id="lat" value="{$placeDetails['lat']}">
                                </div>

                                <div class="top-margin">
                                    <label>Długość geograficzna <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="lng" id="lng" value="{$placeDetails['lng']}">
                                </div>

                                <hr>
                                <input type="submit" value="Edytuj" class="btn btn-primary">
                            </form>
                            <hr>
                            <a href="{$conf->action_root}shop/{$placeDetails['id']}"><button class="btn btn-action">Podgląd</button></a>
                        </div>
                    </div>
                </div>
            {/if}
            <table id="placesValues" class="table table-striped">
                <thead>
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Nazwa</th>
                    <th scope="col">Adres</th>
                    <th scope="col">Autor</th>
                    <th scope="col">Głosy</th>
                    <th scope="col">Akcje</th>
                </tr>
                </thead>
                <tbody>
                {foreach $places as $place}
                    <tr>
                        <th scope="row">{$place['id']}</th>
                        <td>{$place['name']}</td>
                        <td>{$place['address']}</td>
                        <td><a href="{$conf->action_root}profile/{$place['userid']}">{$place['login']}</a></td>
                        <td>{$place['votes']}</td>
                        <td>
                            <div class="dropdown">
                                <button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown">
                                    <span class="caret"></span></button>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="{$conf->action_root}/shop/{$place['id']}">Podgląd</a></li>
                                    <li><a class="dropdown-item" href="{$conf->action_root}managePlaces/{$offset}/details/{$place['id']}">Szczegóły</a></li>
                                    <li><a class="dropdown-item" href="{$conf->action_root}managePlaces/{$offset}/edit/{$place['id']}">Edytuj</a></li>
                                    <li><a class="dropdown-item" onclick="deletePlace('{$place['id']}')" href="#">Usuń</a></li>
                                </ul>
                            </div>
                        </td>
                    </tr>
                {/foreach}
                </tbody>
            </table>

            {if $previous_page > 0}
                <a type="button" class="btn btn-light btn-sm float-right" href="{$conf->action_root}managePlaces/{$previous_page}">Załaduj poprzednie rekordy</a>
            {/if}
            <a type="button" class="btn btn-light btn-sm float-right" href="{$conf->action_root}managePlaces/{$next_page}">Załaduj następne rekordy</a>
            <a type="button" class="btn btn-light btn-sm float-right" href="{$conf->action_root}managePlaces/0">Załaduj wszystkich użytkowników</a>
        </div>
    </div>
    <script>
        $(document).ready(function () {
            $('#placesValues').DataTable();
        });
    </script>

    <script>
        function deletePlace(id) {
            if (confirm("Na pewno chcesz usunąć miejsce? Nie można będzie cofnąć tej operacji")) {
                window.location.href = '{$conf->action_root}managePlaces/{$offset}/delete/'+id;
            }
        }
    </script>
{/block}