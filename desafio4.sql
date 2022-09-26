SELECT 
    usuario, 
    IF (YEAR(MAX(H.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') status_usuario 
FROM SpotifyClone.historico_de_reproducoes H
    INNER JOIN SpotifyClone.usuario U ON H.usuario_id = U.id
    GROUP BY usuario
    ORDER BY usuario;