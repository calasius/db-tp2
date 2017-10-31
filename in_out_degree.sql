match(n:NodoNoticia)
RETURN size((n)<--(:NodoNoticia)) AS in_degree, size((n)-->(:NodoNoticia)) AS out_degee