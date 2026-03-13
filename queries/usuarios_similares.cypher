MATCH (u1:Usuario)-[:OUVIU]->(m:Musica)<-[:OUVIU]-(u2:Usuario)
WHERE id(u1) < id(u2)
RETURN u1.nome AS Usuario1,
       u2.nome AS Usuario2,
       count(m) AS Musicas_em_Comum
ORDER BY Musicas_em_Comum DESC
