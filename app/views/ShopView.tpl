{extends file="main.tpl"}
{block name=intro}
    <div class="jumbotron top-space">
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="{$conf->action_root}main">Strona główna</a></li>
                <li class="active">{$page_title}</li>
            </ol>
            <h2 class="text-center thin">Miejsce: <b>{$place['name']}</b></h2>
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading resume-heading">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="col-xs-12 col-sm-6">
                                    <div id="map"></div>
                                </div>
                                <div class="col-xs-12 col-sm-6">
                                    <ul class="list-group" id="height">
                                        <li class="list-group-item">Nazwa: {$place['name']}</li>
                                        <li class="list-group-item">Adres: {$place['address']}</li>
                                        <li class="list-group-item">Typ:
                                            {if $place['type'] == "shop"}Sklep{/if}
                                            {if $place['type'] == "gas_station"}Stacja benzynowa{/if}
                                            {if $place['type'] == "gastronomy"}Gastronomia{/if}
                                            {if $place['type'] == "bar"}Bar{/if}
                                        </li>
                                        <li class="list-group-item">Godziny otwarcia: Od {$place['open_hour']} do {$place['close_hour']}</li>
                                        <li class="list-group-item">Kategorie:
                                            {foreach $place['category'] as $cat}
                                                {$cat},
                                            {/foreach}
                                        </li>
                                        {if !empty($place['description'])}
                                            <li class="list-group-item">Opis: {$place['description']}</li>
                                        {/if}
                                        <li class="list-group-item">Głosy: {$place['votes']}</li>
                                        <li class="list-group-item">Autor:
                                            <a href="{$conf->action_root}profile/{$place['id']}">{$place['login']}</a>
                                        </li>
                                        <li class="list-group-item">Data dodania: {$place['added_time']}</li>
                                        <li class="list-group-item">
                                            <a href="#"><button class="btn btn-success">+</button></a>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        var customLabel = {
            gastronomy: {
                label: 'R'
            },
            bar: {
                label: 'B'
            },
            gas_station: {
                label: 'G'
            },
            shop: {
                label: 'S'
            }
        };


        var map, infoWindow;
        function initMap() {
            var map = new google.maps.Map(document.getElementById('map'), {
                center: new google.maps.LatLng({$place['lat']}, {$place['lng']}),
                zoom: 15
            });
            var infoWindow = new google.maps.InfoWindow;

            downloadUrl('{$conf->action_root}generateXML', function(data) {
                var xml = data.responseXML;
                var markers = xml.documentElement.getElementsByTagName('marker');
                Array.prototype.forEach.call(markers, function(markerElem) {
                    var id = markerElem.getAttribute('id');
                    var name = markerElem.getAttribute('name');
                    var address = markerElem.getAttribute('address');
                    var type = markerElem.getAttribute('type');
                    var point = new google.maps.LatLng(
                        parseFloat(markerElem.getAttribute('lat')),
                        parseFloat(markerElem.getAttribute('lng')));

                    var infowincontent = document.createElement('div');
                    var strong = document.createElement('strong');
                    strong.textContent = name
                    infowincontent.appendChild(strong);
                    infowincontent.appendChild(document.createElement('br'));

                    var text = document.createElement('text');
                    text.textContent = address
                    infowincontent.appendChild(text);
                    var icon = customLabel[type] || {};
                    var marker = new google.maps.Marker({
                        map: map,
                        position: point,
                        label: icon.label
                    });
                    marker.addListener('click', function() {
                        infoWindow.setContent(infowincontent);
                        infoWindow.open(map, marker);
                    });
                });
            });
        }



        function downloadUrl(url, callback) {
            var request = window.ActiveXObject ?
                new ActiveXObject('Microsoft.XMLHTTP') :
                new XMLHttpRequest;

            request.onreadystatechange = function() {
                if (request.readyState == 4) {
                    request.onreadystatechange = doNothing;
                    callback(request, request.status);
                }
            };

            request.open('GET', url, true);
            request.send(null);
        }

        function doNothing() {}
    </script>
    <script async defer
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBKDC4RkalzqSIb9AgI_nP7Qny28Dkhw_Y&callback=initMap">
    </script>
    <script>
        var offsetHeight = document.getElementById('height').offsetHeight;
        document.getElementById("map").style.height = offsetHeight + "px";
    </script>
{/block}