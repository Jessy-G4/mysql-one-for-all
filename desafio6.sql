SELECT
    FORMAT(MIN(valor), 2) AS faturamento_minimo,
    FORMAT(MAX(valor), 2) AS faturamento_maximo,
    FORMAT(AVG(valor), 2) AS faturamento_medio,
    FORMAT(SUM(valor), 2) AS faturamento_total
FROM SpotifyClone.usuario U
    INNER JOIN SpotifyClone.plano P ON U.plano_id = P.id;