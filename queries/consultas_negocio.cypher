MATCH (u:Usuario)-[:OUVIU]->(m:Musica)-[:IN_GENRE]->(g:Genero)
RETURN g.nome AS Genero,
       count(*) AS Total_Ouvidas
ORDER BY Total_Ouvidas DESC
