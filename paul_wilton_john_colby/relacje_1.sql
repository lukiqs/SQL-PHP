-- laczenie danych z 3 tabel 
SELECT * FROM pracownicy AS A 
INNER JOIN kordynacja AS B 
INNER JOIN dzialy AS C 
ON (A.id_p=B.id_p and b.id_dzialu=c.id_dzialu);

-- laczenie leftem 
SELECT * FROM pracownicy AS A 
LEFT JOIN kordynacja AS B 
on A.id_p=B.id_p;

-- polaczenie combo 
SELECT * FROM pracownicy AS A 
LEFT JOIN kordynacja AS B 
on A.id_p=B.id_p
LEFT JOIN dzialy AS c
on b.id_dzialu=c.id_dzialu
UNION
SELECT * FROM pracownicy AS A 
LEFT JOIN kordynacja AS B 
on A.id_p=B.id_p
RIGHT JOIN dzialy AS c
on b.id_dzialu=c.id_dzialu;

-- like
select * from `pracownicy` where `Imie` like 'M%';

-- przyklad z havingiem 
SELECT COUNT(id_p)
FROM `pracownicy`
GROUP BY Nazwisko
HAVING length(Nazwisko) = 4;

-- vidok
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `first_employe` AS
    SELECT 
        `pracownicy`.`id_p` AS `id_p`,
        `pracownicy`.`Imie` AS `Imie`,
        `pracownicy`.`Nazwisko` AS `Nazwisko`
    FROM
        `pracownicy`
    LIMIT 5;
    
    
select * from first_employe;


    
