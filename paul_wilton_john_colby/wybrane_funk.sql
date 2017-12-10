-- usuwanie bialych znakow
select trim('   sql   ') as str;

-- podstring 
select substring('Ala ma kota.',1,3) as wynik;

-- stringi czytane wspak , na palidromy to nie dziala xd ;)
select reverse('Piszemy cos wspak!!') as wynik;
select reverse('kajak') as wynik; -- palidrom

-- liczenie długosci textu
select length('Tekst do policznia.') as wynik;

-- funkcja soundex
select soundex('Łukasz') as wynik;

-- funkcja coalesce
select coalesce('d','Brak danej!') as wynik;
select coalesce(null,'Brak danej!') as wynik;

