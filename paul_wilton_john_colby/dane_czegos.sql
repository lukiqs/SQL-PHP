-- funkcje do dane_czegos

select * from  `dane_czegos` limit 5 ;
select * from  `dane_czegos` where `dane_1_i`=5 or `dane_1_i`=6;
select * from  `dane_czegos` where `dane_1_i`=59 and `dane_1_i`=68;
select * from  `dane_czegos` where  `dane_1_i` BETWEEN 8 AND 56;
select * from  `dane_czegos` order by `dane_1_i` desc;
select * from  `dane_czegos` order by `dane_1_i` ; -- domyslnie asc
select * from  `dane_czegos` where  `dane_1_i` in (1,2,3,4,5,6,7,8,9,10);
select * from  `dane_czegos` where not `dane_1_i`=2;

-- suma  z wartoscia bezwzgledna
select sum(abs(`dane_1_i`)) from `dane_czegos` ;

-- srednia  z wartoscia bezwzgledna i zaokragleniem
select round(avg(abs(`dane_1_i`))) from `dane_czegos` ;

-- min max 
select min(`dane_1_i`) from `dane_czegos` ;
select max(`dane_1_i`) from `dane_czegos` ;
select min(`dane_1_f`) from `dane_czegos` ;
select max(`dane_1_f`) from `dane_czegos` ;

-- zliczenie danych
select count(`dane_1_f`) from `dane_czegos` WHERE `dane_1_f`=0 ;

-- odrebne dane
select distinct(`dane_1_f`) from `dane_czegos` ;

-- potegowanie
select power(2,3) AS wynik;

-- pierwiastek
select sqrt(4) AS wynik;

-- sufit
select ceil(17.01) AS wynik;

-- podloga
select floor(17.89) AS wynik;

-- random losowanie od 0 do 10
select floor(rand() * (10 + 1)) as wynik;
