# Como remover elementos da lista?
# Sabendo a posição dele na lista:
# 1. Dividimos a lista em duas partes:
#   1° parte: todos os elementos anteriores ao elemento que desejamos remover
#   2° parte: o restante dos elementos
# 2. Pegamos a cauda da 2° parte
# 3. Juntamos a 1° parte e a cauda da 2° parte

numeros = [1, 2, 3, 4, 5]

# | Remover o 4

# Sabendo a posição dele na lista:
posicao = Enum.find_index(numeros, fn x -> x == 4 end)
IO.puts "Posição: #{posicao}"

# 1. Dividimos a lista em duas partes:
#   1° parte: todos os elementos anteriores ao elemento que desejamos remover
#   2° parte: o restante dos elementos
{inicio, fim} = Enum.split(numeros, posicao)

# 2. Pegamos a cauda da 2° parte
resto = tl(fim)

# 3. Juntamos a 1° parte e a cauda da 2° parte
lista = inicio ++ resto

IO.write "Lista: "
Enum.each(lista, fn item -> IO.write "#{item} " end)
IO.puts ""
