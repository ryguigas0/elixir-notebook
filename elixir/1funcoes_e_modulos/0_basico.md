# Elixir básico

## Tipos de dados básico

### Inteiros (Integer)

```elixir
10 # É um inteiro
0b0110 # Inteiro em binário
0o644 # Inteiro em octal
0x1F # Inteiro em hexadecimal
```

### Ponto flutuante (Float)

```elixir
3.15 # É um float
3.14e-10 # É um float em notação científica (3.14 * 10^-10)
0o644 # Inteiro em octal
0x1F # Inteiro em hexadecimal
```

### Boleana (boolean)

```elixir
true # É uma boleana de verdadeiro
false # É uma boleana de falso
```

### Atomo (Atom)

```elixir
# Atomos tem eles mesmos como valor
:atomo
:erro
:correto
:true # Boleanas também são atomos
Modulo # Nomes de módulos também são
:rand.uniform() # Nomes de módulos do Erlang também são
```

### String

```elixir
"Eu sou uma string"
"Eu também faço #{:interpolacao} com qualquer tipo" #=> "Eu também faço interpolacao com qualquer tipo"
"Eu quebro\nno meio" # \n significa quebra linha
"""
Eu quebro
no meio
"""
```

### Nulo (Nil)

```elixir
nil #=> nil
```

## Operadores

### de aritimética
```elixir
2 + 2 #=> 4 (Soma)
2 - 1 #=> 1 (Subtração)
2 * 5 #=> 10 (Multiplicação)
5 / 2 #=> 2.5 (Divisão decimal)
rem(5, 2) #=> 1 (Resto de divisão)
div(5, 2) #=> 2 (Divisão inteira)
```

### de lógica

```elixir
# Acecitam apenas boleana
true or false #=> true (Ou)
true and false #=> false (E)
not true #=> false (Negação)

# Aceitam qualquer tipo
-20 || true #=> -20
false || -20 #=> -20

true && 42 #=> true
nil && 42 #=> false

!42 #=> false
!nil #=> true
```

### de comparação

```elixir
1 == 1.0 #=> true (Comparação de valor)
1 === 1.0 #=> false (Comparação de valor e tipo)
1 <= 2 #=> true (Menor ou igual)
1 < 2 #=> true (Menor)
1 >= 2 #=> false (Maior ou igual)
1 > 2 #=> false (Maior)
```