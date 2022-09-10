# Tipos colecionadores

Tipos que podem guardar mais de um dado

## Lists (listas)

```elixir
lista = [10928309, :coord_x, "Amogus"]
[false | lista] #=> Coloca o novo elemento antes da lista (rápido)
lista ++ [true] #=> Coloca o novo elemento depois da lista (lento)
[:lista_a] ++ [:lista_b] #=> [:lista_a, :lista_b] Cocatena listas
[:lista_a, :lista_b] -- [:lista_b] #=> [:lista_b] Subtrai listas com COMPARAÇÃO DE VALOR E TIPO

hd(lista) #=> 10928309 Primeiro elemento da lista
tail(lista) #=> [:coord_x, "Amogus"] Outros elementos
[prim | oturos] = lista
```

## Tuples (tuplas)

```elixir
tup = {10928309, :coord_x, "Amogus"}
File.read("arquivo.txt") #=> {:error, :enoent} Usado para mostrar informações adicionais no retorno de funções
```

## Keyword lists (dicionário)

```elixir
[key: "chave", clava: "key"] === [{:key, "chave"}, {:clava, "key"}] #=> true É a mesma coisa, normalmente usado para passar opções para funções
```

## Maps (mapas)
```elixir
# Chaves podem serem qualquer tipo básico assim
mapa_string = %{variavel => "valor"}

mapa_string["var"] #=> "valor"

# Chaves podem ser atomos assim, mas não pode misturar
mapa_atom = %{key: "value"}

mapa_atom.key #=> "value"
mapa_atom[:key] #=> "value"

%{mapa_atom | key: "valor"} # Retorna o mapa com a chave atualizada com o novo valor
```