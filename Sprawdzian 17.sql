/*Na bazie TEST utwórz tabelę towary z następującymi kolumnami:
-ID_produkt z kluczem głównym, z autonumerowaniem wzratającym co 2
-nazwa, 
-rodzaj,
-kod (5),
-liczba_sztuk (int),
-cena (money),
-dostepny, 


Ustaw ograniczenie w koluminie dostepny dla wartości "T" lub "N"
Ustaw ograniczenie w kolumnie nazwa, tak żeby były nie powtarzające się nazwy produktów. 
Ustaw ograniczenie w koluminie rodzaj jako "spozywcze" jako domyslne
Ustaw ograniczenie w koluminie cena wartośc poczawszy od 6.5-25.5 
Ustaw ograniczenie w koluminie liczba_sztuk minimum 100
Ustaw ograniczenie w koluminie kod rozpoczyna sie od Duzej litery "A"
Dodaj nową kolumnę promocja (int)
Ustaw ograniczenie w koluminie promocja albo "0" albo "10"

Po wprowadzeniu każdego ograniczenia sprawdź, czy działa dodająć rekord do tabelki.
*/

create table TEST(
ID_produkt int identity(1,1) primary key not null,
nazwa varchar(30),
rodzaj varchar(30),
kod varchar(5),
liczba_sztuk int,
cena money,
dostepny varchar
)

select * from TEST;

drop table TEST;

/*1*/

alter table TEST add constraint tn check(dostepny in ('T','N'));
/*2*/

alter table TEST add constraint nazwaaa unique(nazwa);

/*3*/

alter table TEST add constraint rodzaaaj default 'spozywcze' for rodzaj;

/*4*/

alter table TEST add constraint cenaa check (cena between 6.5  and 25.5);

/*5*/

alter table TEST add constraint liczbasztuk check (liczba_sztuk>100);

/*6*/

alter table TEST add constraint kodzik check (kod like 'A%');

/*7*/

alter table TEST add promocja int;

/*8*/

alter table TEST add constraint promocjaa check (promocja in ('0', '10'));

insert into TEST (nazwa, rodzaj, kod, liczba_sztuk, cena, dostepny, promocja) VALUES
('costam', '', 'AAAAA', 105, 8, 'T', 10);

select * from TEST;