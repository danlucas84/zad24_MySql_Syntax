
-- 1 Tworzy tabelę pracownik(imie, nazwisko, wyplata, data urodzenia, stanowisko).
-- W tabeli mogą być dodatkowe kolumny, które uznasz za niezbędne.

create table pracownik (

id int auto_increment PRIMARY KEY not null,
imie varchar(50) default null,
nazwisko varchar(50) default null,
wyplata decimal(10, 2) default null,
data_urodzenia date default null,
stanowisko varchar(50) default null,
wiek int(3) default null
);

-- 2 Wstawia do tabeli co najmniej 6 pracowników

insert into pracownik
set
imie ='Jan' ,
nazwisko ='Kowalski'  ,
wyplata = '500.00' ,
data_urodzenia ='1950-01-01' ,
stanowisko ='pomocnik' ,
wiek = current_date()-data_urodzenia;

insert into pracownik
set
imie ='Olga' ,
nazwisko = 'Nowak' ,
wyplata ='4300.00' ,
data_urodzenia = '1970-01-01',
stanowisko = 'menager' ,
wiek = 49;

insert into pracownik
set
imie = 'Oliwia',
nazwisko = 'Nowak' ,
wyplata = '1000.00' ,
data_urodzenia ='2000-01-01' ,
stanowisko = 'studentka',
wiek = 19;


insert into pracownik
set
imie = 'Bonifacy',
nazwisko ='Ikinski'  ,
wyplata ='2000.00' ,
data_urodzenia ='1990-01-01' ,
stanowisko =' support specialist' ,
wiek = 29;



insert into pracownik
set
imie = 'Alicja',
nazwisko = 'Nowak' ,
wyplata = '3200.00' ,
data_urodzenia = '1999-01-01' ,
stanowisko = 'mlodszy tester',
wiek =20;


insert into pracownik
set
imie = 'Alicja',
nazwisko =' Kowalska'  ,
wyplata ='2500.00' ,
data_urodzenia ='1998-01-01' ,
stanowisko ='pomocnik menagera' ,
wiek = 22;





-- 3 Pobiera wszystkich pracowników i wyświetla ich w kolejności alfabetycznej po nazwisku

select * from pracownik
where nazwisko
group by asc;

-- 4 Pobiera pracowników na wybranym stanowisku

select * from pracownik
where stanowisko like '%tester';

-- zwroci osoby zarowno na stanowisku tester jak i mlodszy tester

-- 5 Pobiera pracowników, którzy mają co najmniej 30 lat

select * from pracownik
where wiek >=30;

-- 6  Zwiększa wypłatę pracowników na wybranym stanowisku o 10%

select (wyplata * 110) from pracownik
where stanowisko = 'tester';


-- 7 Usuwa najmłodszego pracownika

delete from pracownik
where wiek = (select min(wiek) from pracownik);

-- 8  Usuwa tabelę pracownik

DROP TABLE pracownik;

-- 9 Tworzy tabelę stanowisko (nazwa stanowiska, opis, wypłata na danym stanowisku)
create table stanowisko (
id int auto_increment PRIMARY KEY,
nazwa_stanowiska varchar (50) default null,
opis varchar(50) default null,
wypłata_na_danym_stanowisku decimal (10,2) default 1000.00,

);

-- 10 Tworzy tabelę adres (ulica+numer domu/mieszkania, kod pocztowy, miejscowość)

-- 11 Tworzy tabelę pracownik (imię, nazwisko) + relacje do tabeli stanowisko i adres

-- 12 Dodaje dane testowe (w taki sposób, aby powstały pomiędzy nimi sensowne powiązania)

-- 13 Pobiera pełne informacje o pracowniku (imię, nazwisko, adres, stanowisko)

select imie, nazwisko, adres, stanowisko
from pracownik;


-- 14 Oblicza sumę wypłat dla wszystkich pracowników w firmie

select sum(wyplata) from
pracownik;

-- 15 Pobiera pracowników mieszkających w lokalizacji z kodem pocztowym 90210
-- (albo innym, który będzie miał sens dla Twoich danych testowych)