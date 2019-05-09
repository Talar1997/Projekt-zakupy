# Projekt
Projekt stworzony na potrzeby zajęć Języki programowania dynamicznych stron internetowych oraz Projektowanie bazodanowych aplikacji webowych.

## Wykorzystane zasoby:
* Framework PHP Amelia - http://amelia-framework.kudlacik.eu/
* Smarty - https://www.smarty.net/
* Medoo - https://medoo.in/
* Alertify.js - https://alertifyjs.com/
* Szablon HTML - https://www.gettemplate.com/
* Google Maps API - https://cloud.google.com/maps-platform/
* Favicon Generator - https://favicon.io/favicon-generator/

## Funkcjonalności

### Rejestracja
Pozwala użytkownikowi utworzyć nowe konto w serwisie. Strona wymaga podania takich informacji jak:
- Adres email
- Login
- Hasło (Conajmniej 5 znaków, jedna litera, jedna cyfra)
- Powtórzone hasło
- Pytanie pomocnicze (do odzyskiwania hasła)
- Odpowiedź na pytanie pomocnicze

Wszystkie pola są odpowiednio walidowane metodą validate() obiektu Validator. Hasło oraz odpowiedź na pytanie pomocnicze zanim zostanie zapisane do bazy danych, jest szyfrowane funkcją MD5().

Wprowadzenie nieprawidłowej wartości w którekolwiek z pól prowadzi do wyrzucenia błędu (lub błędów, jeśli jest ich więcej). Rejestracja zakończona sukcesem tworzy nowy rekord w bazie oraz przekierowuje użytkownika na stronę logowania.

### Logowanie
Zanim rozpocznie się walidowanie danych z formularza, sprawdzone zostaje, czy user nie posiada już aktywnej sesji. Jeżeli nie, sprawdzane jest czy wprowadzone i zaszyfrowane hasło przez MD5() jest zgodne z tym, co znajduje się w bazie. Jeżeli którakolwiek z wartości jest zła, zostanie zwrócona odpowiednia wiadomość.

### Resetowanie hasła
Resetowanie hasła składa się z dwóch kroków:
1. Wprowadzenie adresu email
2. Odpowiedź na pytanie bezpieczeństwa i ustawienie nowego hasła.

Ktok 1 prowadzi do zweryfikowania, czy podany adres istnieje w bazie danych. Na jego podstawie kolejny kontroler będzie mógł pobrać pytanie bezpieczeństwa. Dane trafiają do punktu 2 poprzez parametr w URL. Drugi kontroler na samym początku weryfikuje, czy parametr w ogóle występuje oraz czy podany w parametrze mail figuruje w bazie danych. Jeśli nie, to cofa użytkownika do kroku pierwszego. Ma to na celu zabezpieczenie przed celową modyfikacją adresu. Jeśli jednak rekord istnieje w bazie, to pobrana zostaje reszta niezbędnych danych. Ustawianie nowego hasła działa tak samo jak w przypadku rejestracji.

Jeżeli wszystkie pola zostaną poprawnie zwalidowane, następuje update w bazie.

### Logi administracyjne
Podstrona dla zalogowanych administratorów umożliwiająca przejrzenie logów administracyjnych. Logi przechowywane są w bazie danych w osobnej tabeli, poza treścią znajduje się tam czas, w którym został dodany oraz adres IP wykonawcy danej czynności. W logach zapisują się rejestracje, nieudane oraz udane próby odzyskania hasła, usunięcie/modyfikacja użytkownika przez administratora i inne logi, które pojawią się wraz z implementacją nowych funkcji. Logów nie da się usuwać, można je tylko przeglądać.

### Zarządzanie użytkownikami
Zarządzanie użytkownikami sterowane jest osobnym kontrolerem, domyślnie wyświetlana jest lista wszystkich użytkowników wraz z wyszukiwarką obsługiwaną js-owym skryptem z bootstrapa. Na każdym użytkowniku możemy wykonać trzy akcje:
- Zobaczyć szczegóły użytkownika - a konkretniej wyświetlić więcej informacji o nim (domyślnie jest id i login), przy podglądzie widzimy wszystkie wartości przechowywane w bazie danych o danym userze
- Usunąć użytkownika - wiąże się to z usunięciem konkretnego rekordu z bazy i dodaniem wpisu w logach, że taka akcja została wykonana przez danego admdinistratora
- [Do dokończenia] Edytować użytkownika - skrypt umożliwia zmiane wszystkich wartości poza id. Formularz wysyła do kontrolera wszystkie pola, jednak jeśli dane pole nie różni się od tego w bazie (np. hash hasła) to nie wykona się żadna akcja. Pole hasła jest walidowane tak jak przy rejestracji. Login i email również jest walidowany, sprawdzane jest czy dane wartości nie istnieją już w bazie danych.


### Dodawanie nowych miejsc
[do uzupełnienia]

