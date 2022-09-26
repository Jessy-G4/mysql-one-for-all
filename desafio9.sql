SELECT 
  COUNT(HR.usuario_id) as quantidade_musicas_no_historico 
FROM SpotifyClone.historico_de_reproducoes as HR
  INNER JOIN SpotifyClone.usuario as U ON U.id = HR.usuario_id
WHERE U.usuario = 'Barbara Liskov'
GROUP BY HR.usuario_id;