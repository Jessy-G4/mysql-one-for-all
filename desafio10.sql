SELECT 
  C.cancao AS nome,
  COUNT(HR.id_cancao) AS reproducoes
FROM SpotifyClone.cancao C
INNER JOIN SpotifyClone.historico_de_reproducoes HR ON C.id = HR.id_cancao
INNER JOIN SpotifyClone.usuario U ON U.id = HR.usuario_id
INNER JOIN SpotifyClone.plano P ON P.id = U.plano_id
WHERE P.plano = 'gratuito' OR P.plano = 'pessoal'
GROUP BY HR.id_cancao
ORDER BY C.cancao;