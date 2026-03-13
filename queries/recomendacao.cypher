MATCH (u:Usuario {nome:"Ana"})-[:OUVIU]->(m:Musica)<-[:OUVIU]-(outro:Usuario)
MATCH (outro)-[:OUVIU]->(rec:Musica)
WHERE NOT (u)-[:OUVIU]->(rec)
RETURN rec.titulo AS Musica_Recomendada, count(*) AS Score
ORDER BY Score DESC
LIMIT 10
