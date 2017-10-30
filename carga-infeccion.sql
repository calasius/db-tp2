AD CSV WITH HEADERS FROM "file:///prueba.csv" AS linea

MERGE (n:NodoNoticia {Nombre:linea.fromUserId})

MERGE (m:NodoNoticia {Nombre:linea.toUserId})

MERGE (n) -[:TO {manda:linea.title}]-> (m)

