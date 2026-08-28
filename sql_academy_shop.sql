-- Zadanie 01 - Wyświetl aktywnych klientów z Polski.
-- Oczekiwany wynik: Imię, nazwisko, e-mail i miasto.
SELECT first_name, last_name, email, city FROM customers WHERE country = 'Polska';


-- Zadanie 02 - Pokaż unikalne kraje klientów.
-- Oczekiwany wynik: Jedna kolumna bez powtórzeń.
SELECT DISTINCT country FROM customers; 


-- Zadanie 03 - Posortuj produkty malejąco po cenie, a przy tej samej cenie alfabetycznie.
-- Oczekiwany wynik: Nazwa, cena i stan magazynowy.
SELECT product_name, unit_price, stock_quantity FROM products
ORDER BY 1,2;


-- Zadanie 04 - Znajdź produkty droższe niż 500 zł z kategoriami 1 lub 2.
-- Oczekiwany wynik: Produkty spełniające oba kryteria.
SELECT product_name, category_id, unit_price FROM products
WHERE unit_price > 500 AND (category_id = 1 OR category_id = 2)


-- Zadanie 05 - Wyświetl produkty, które nie są wycofane.
-- Oczekiwany wynik: Aktywna oferta produktów.
SELECT product_id, product_name FROM academy.products WHERE NOT discontinued;








