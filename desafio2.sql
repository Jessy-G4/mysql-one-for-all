SELECT 
  COUNT(id) cancoes,
  COUNT(DISTINCT id_artista) artistas,
  COUNT(DISTINCT album_id) albuns 
FROM SpotifyClone.cancao;