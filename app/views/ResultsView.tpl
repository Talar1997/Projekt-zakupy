{extends file="main.tpl"}
{block name=intro}
    <header id="head" class="secondary"></header>
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="{$conf->action_root}main">Strona główna</a></li>
                <li class="active">{$page_title}</li>
            </ol>
            <h2 class="text-center thin">Wyszukiwarka</h2>

            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <h4>Wyszukiwarka</h4>
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <form method="GET" action="{$conf->action_root}search">
                                <div class="row">
                                    <div class="col-md-4">
                                        <input type="text" list="nameHints" name="shopName" class="form-control" placeholder="Nazwa sklepu"
                                               onkeyup="ajaxReloadElement('{$conf->action_root}hint?column=name&value='+this.value, 'nameHints', doNothing)">
                                        <datalist id="nameHints">
                                        </datalist>
                                    </div>
                                    <div class="col-md-4">
                                        <input type="text" list="addressHints" name="address" class="form-control" placeholder="Adres"
                                               onkeyup="ajaxReloadElement('{$conf->action_root}hint?column=address&value='+this.value, 'addressHints', doNothing)">
                                        <datalist id="addressHints">
                                        </datalist>
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
                                <div class="row">
                                    <div class="col-md-12">
                                        <input type="submit" class="btn btn-primary" value="Szukaj">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <h4>Wyszukane miejsca</h4>
                    {if isset($query) || count($query) > 0}
                        <ul class="list-group">
                            {if count($query) > 0}
                                {foreach $query as $place}
                                    <li class="list-group-item">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <a href="{$conf->action_root}shop/{$place['id']}">{$place['name']}</a>
                                            </div>
                                            <div class="col-md-3">
                                                {$place['address']}
                                            </div>
                                            <div class="col-md-2">
                                                {if $place['type'] == "shop"}Sklep{/if}
                                                {if $place['type'] == "gas_station"}Stacja benzynowa{/if}
                                                {if $place['type'] == "gastronomy"}Gastronomia{/if}
                                                {if $place['type'] == "bar"}Bar{/if}
                                            </div>
                                            <div class="col-md-2">
                                                {foreach $place['category'] as $cat}
                                                    {$cat},
                                                {/foreach}
                                            </div>
                                            <div class="col-md-1">
                                                Głosy: {$place['votes']}
                                            </div>
                                        </div>
                                    </li>
                                {/foreach}

                            {/if}
                        </ul>
                    {/if}
                    {if !isset($query) || count($query) == 0}
                        <h5>Brak miejsc do wyświetlenia!</h5>
                    {/if}
                </div>
            </div>
        </div>
    <script>
        function doNothing() {
            return false;
        }
    </script>
{/block}