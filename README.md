# Projekt
Projekt stworzony na potrzeby zajęć Języki programowania dynamicznych stron internetowych oraz Projektowanie bazodanowych apliakcji webowych.

## Wykorzystane zasoby:
* Framework PHP Amelia - http://amelia-framework.kudlacik.eu/
* Smarty - https://www.smarty.net/
* Medoo - https://medoo.in/
* Alertify.js - https://alertifyjs.com/
* Szablon HTML - https://www.gettemplate.com/

## Funkcjonalności

### Rejestracja
Pozwala użytkownikowi utworzyć nowe konto w serwisie. Strona wymaga podania takich informacji jak
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

### Przywracanie hasła
