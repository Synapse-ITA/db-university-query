-- SELEZIONO NOME E COGNOME DEGLI INSEGNANTI ORDINATI PER ORDINE ALFABETICO
select surname, name
from teachers t 
order by surname, name;

-- SELEZIONO TUTTI GLI ESAMI CHE VALGONO ALMENO 12 CFU
select * 
from courses c 
where cfu >= 12;

-- SELEZIONO TUTTI GLI STUDENTI NATI NEL 1990
select *
from students s 
where year (date_of_birth) = 1990;

-- SELEZIONO TUTTI I CORSI CHE FANNO PARTE DEL PRIMO SEMESTRE E DEL PRIMO ANNO
select * 
from courses c 
where period = "I semestre" and year = 1;

-- CHIEDO QUANTI DIPARTIMENTI CI SONO NELL'UNIVERSITA'
select count(*)
from departments;

-- CONTARE TUTTI GLI INSEGNANTI IL CUI COGNOME TERMINA CON "E"
select count(*)  
from teachers t 
where surname like '%E';

-- SELEZIONARE NOME, COGNOME E CODICE FISCALE DEGLI STUDENTI DEL CORSO DI LAUREA IN ECONOMIA, IN ORDINE ALFABETICO
select name, surname, fiscal_code
from students
where degree_id = 9
order by surname, name;

-- SELEZIONO TUTTI I CORSI DI LAUREA MAGISTRALE DEL DIPARTIMENTO DI NEUROSCIENZE
select *
from degrees d 
where department_id = 7 and `level` = 'magistrale';


-- BONUS 1 (SBAGLIATO)
select *
from courses c
where name = "maxime laboriosam nostrum";
-- corso di laurea biologia molecolare, in data 2020-01-25

SELECT name, surname, enrolment_date
FROM students
WHERE enrolment_date < '2020-01-25'
AND students.degree_id = 2
 


