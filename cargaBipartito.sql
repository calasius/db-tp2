USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "file:///bipartito.csv" AS linea

MERGE (n:Noticia {Url:linea.url, Domain: linea.domain, Title: linea.title, UrlId:linea.urlId})

MERGE (u:Usuario {userId:linea.toUserId})

MERGE (w:Usuario {userId:linea.toUserId})

MERGE (n) -[:Participa {participa:linea.title}]-> (u)
MERGE (n) -[:Participa {participa:linea.title}]-> (w)
