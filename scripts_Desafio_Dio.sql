--1
SELECT 
    Nome,
    Ano
FROM
    FILMES;

--2
SELECT
    Nome,
    Ano,
    Duracao
FROM
    FILMES
ORDER BY
    Ano ASC

--3
SELECT
    Nome,
    Ano,
    Duracao
FROM
    FILMES
WHERE NOME = 'De Volta para o Futuro'

--4
SELECT
    Nome,
    Ano,
    Duracao
FROM
    FILMES
WHERE
    Ano = 1997

--5
SELECT
    Nome,
    Ano,
    Duracao
FROM
    FILMES
WHERE
    Ano > 2000

--6
SELECT
    Nome,
    Ano,
    Duracao
FROM
    FILMES
WHERE
    Duracao > 100
    AND Duracao < 150
ORDER BY
    Duracao ASC

--7
SELECT
    Ano,
    COUNT(*) AS Quantidade
FROM
    FILMES
GROUP BY
    Ano
ORDER BY
    Duracao DESC

--8
SELECT
    Id,
    PrimeiroNome,
    UltimoNome,
    Genero
FROM
    ATORES
WHERE Genero = 'M'

--9
SELECT
    Id,
    PrimeiroNome,
    UltimoNome,
    Genero
FROM
    ATORES
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC

--10
SELECT
    Nome,
    Genero
FROM
    FILMES a
INNER JOIN FILMESGENERO b ON a.Id = b.IdFilme
INNER JOIN GENEROS c ON b.IdGenero = c.Id  

--11
--10
SELECT
    Nome,
    Genero
FROM
    FILMES a
INNER JOIN FILMESGENERO b ON a.Id = b.IdFilme
INNER JOIN GENEROS c ON b.IdGenero = c.Id 
WHERE c.Genero = 'Mistério'


--12
SELECT
    Nome,
    PrimeiroNome,
    UltimoNome,
    Papel
FROM
    FILMES a
INNER JOIN ElencoFilme b ON a.Id = b.IdFilme
INNER JOIN Atores c ON b.IdAtor = c.Id 