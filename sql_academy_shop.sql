-- Zadanie 01 - Wyświetl aktywnych klientów z Polski.
-- Oczekiwany wynik: Imię, nazwisko, e-mail i miasto.
SELECT first_name, last_name, email, city FROM academy.customers WHERE country = 'Polska';


-- Zadanie 02 - Pokaż unikalne kraje klientów.
-- Oczekiwany wynik: Jedna kolumna bez powtórzeń.
SELECT DISTINCT country FROM academy.customers; 


-- Zadanie 03 - Posortuj produkty malejąco po cenie, a przy tej samej cenie alfabetycznie.
-- Oczekiwany wynik: Nazwa, cena i stan magazynowy.
SELECT product_name, unit_price, stock_quantity FROM academy.products
ORDER BY 1,2;


-- Zadanie 04 - Znajdź produkty droższe niż 500 zł z kategoriami 1 lub 2.
-- Oczekiwany wynik: Produkty spełniające oba kryteria.
SELECT product_name, category_id, unit_price FROM academy.products
WHERE unit_price > 500 AND (category_id = 1 OR category_id = 2)


-- Zadanie 05 - Wyświetl produkty, które nie są wycofane.
-- Oczekiwany wynik: Aktywna oferta produktów.
SELECT product_id, product_name FROM academy.products WHERE NOT discontinued;


-- Zadanie 06 - Pokaż pięć najnowszych zamówień.
-- Oczekiwany wynik: Pięć rekordów od najnowszego.
SELECT order_id, order_date FROM academy.orders
ORDER BY order_date DESC 
LIMIT 5;

-- Zadanie 07 - Pokaż osobno klientów bez telefonu i zamówienia z datą wysyłki.
-- Oczekiwany wynik: Dwa wyniki
SELECT customer_id, first_name, last_name, phone FROM academy.customers
WHERE phone IS null;

SELECT order_id, shipped_date FROM academy.orders 
WHERE shipped_Date IS NOT NULL;


-- Zadanie 08 - Dodaj testowego, aktywnego klienta z Warszawy.
-- Oczekiwany wynik: Jeden nowy rekord, następnie kontrola.
INSERT INTO academy.customers (first_name,last_name,email,phone,city,country,is_active)
VALUES ('Testowa','Osoba','testowa.osoba@example.com',NULL,'Warszawa','Polska',true);

SELECT customer_id, email FROM academy.customers WHERE email = 'testowa.osoba@example.com';


-- Zadanie 09: Zmień miasto klienta filip.u@example.com na Radom.
-- Oczekiwany wynik: Zmieniony dokładnie jeden klient.
UPDATE academy.customers
SET city = 'Radom' 
WHERE email = 'filip.u@example.com'

SELECT * FROM academy.customers WHERE email = 'filip.u@example.com'


-- Zadanie 10: Oblicz minimalną, maksymalną i średnią cenę produktu.
-- Oczekiwany wynik: Jeden wiersz z trzema miarami.
SELECT MIN(unit_price) AS min_price, MAX(unit_price) AS max_price, ROUND(AVG(unit_price), 2) AS avg_price
FROM academy.products;
