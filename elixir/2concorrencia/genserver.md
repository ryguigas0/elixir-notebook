# [GenServers](https://hexdocs.pm/elixir/GenServer.html)

Criar um processo que guarda estado e funciona como um servidor
- `call`: um processo faz uma requisição síncrona que retorna um valor
- `cast`: um processo faz uma requisição assíncrona que não retorna um valor

## Estrutura básica de um GenServer

```elixir
defmodule MeuGenServer do
    use GenServer # Importa o behavior de GenServer

    def init(estado_inicial), do: {:ok, estado_inicial} # Código que roda quando o genserver inicia

    def handle_call(:requerir, quem_requeriu, estado_atual), do: {:reply, valor_resposta, novo_estado}

    def handle_call(:show, quem_requeriu, estado_atual), do: {:reply, estado_atual, estado_atual} 

    def handle_cast(termo, estado_atual), do: {:noreply, novo_esado}
end
```

## Rodando e interagindo com um GenServer
```elixir
    GenServer.start_link( # Iniciar um genserver
        MeuGenServer, # Desse tipo
        estado_inicial, # Com esse estado
        name: MeuGenServer) # Ao invés de usar o PID, usa o módulo para identificar
    GenServer.call( # Requira
        MeuGenServer, # desse genserver
        :requerir) # com essa operação
        #=> valor_resposta
    GenServer.cast( # Converta o estado
        MeuGenServer, # Desse genserver
        {:operar, arg1, arg2})  # Com esse valor
        #=> :ok
```