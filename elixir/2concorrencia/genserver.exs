defmodule SimpleQueue do
  use GenServer

  ### GenServer API

  @doc """
  GenServer.init/1 callback
  """
  def init(state), do: {:ok, state}

  def handle_call(:dequeue, _from, []), do: {:reply, nil, []}

  def handle_call(:dequeue, _from, curr_state) do
    [value | new_state] = curr_state
    {:reply, value, new_state}
  end

  def handle_call(:show, _from, curr_state), do: {:reply, curr_state, curr_state}

  def handle_cast({:inqueue, value}, curr_state) do
    new_state = [value | curr_state]

    {:noreply, new_state}
  end

  # Fazendo a interação com o genserver mais simples

  def start_link(state \\ []) do
    GenServer.start_link(__MODULE__, state, name: __MODULE__)
  end

  def show, do: GenServer.call(__MODULE__, :show)
  def dequeue, do: GenServer.call(__MODULE__, :dequeue)
  def inqueue(value), do: GenServer.cast(__MODULE__, {:inqueue, value})
end
