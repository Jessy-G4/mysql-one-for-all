SELECT 
    C.cancao,
    COUNT(H.id_cancao) as reproducoes 
FROM SpotifyClone.historico_de_reproducoes as H
    INNER JOIN SpotifyClone.cancao C ON C.id = H.id_cancao
GROUP BY H.id_cancao
ORDER BY reproducoes desc, C.cancao asc
LIMIT 2;