# Módulos

Módulos agrupam funções, e módulos podem agrupar módulos

## Criando o seu módulo

```elixir
defmodule Modulasso.Modulo do
    # 
    def nome_funcao(arg) when is_binary(arg) do
        {:ok, "#{arg} é meu argumento!"}
    end

    def nome_funcao(arg) do
        {:error, :invalid_type}
    end
end
```


## Módulos do Elixir 

```elixir
Modulasso.Modulo.nome_funcao("parametro")
```