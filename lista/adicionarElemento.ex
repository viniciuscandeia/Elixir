
numeros = [1, 2, 3, 4, 5, 6]

# Como adicionar elementos na lista?
novoNumero = 0

# # Adiciona apenas no começo
IO.puts "Nova lista: "
lista = [novoNumero | numeros]
Enum.each(lista, fn item -> IO.write "#{item} " end)
IO.puts ""

# # Adiciona no começo e no fim
IO.puts "Nova lista: "

# Começo
novaLista = [novoNumero] ++ numeros

# Fim
novaLista2 = novaLista ++ [novoNumero]

Enum.each(novaLista2, fn item -> IO.write "#{item} " end)
IO.puts ""

# # Adicionar no meio da lista
# Necessário quebrar a lista -> imutáveis

numeros = [1, 2, 3, 4, 5]

totalElementos = Enum.count(numeros)
IO.puts "Quantidade elementos: #{totalElementos}"

posicaoEntrada = trunc(totalElementos / 2)
IO.puts "Posição: #{posicaoEntrada}"

# ! inicio será uma lista com a quantidade passada no split
# ! fim será uma lista com os elementos restantes

{inicio, fim} = Enum.split(numeros, posicaoEntrada)
nova = inicio ++ [9] ++ inicio
Enum.each(nova, fn item -> IO.write "#{item} " end)
IO.puts ""

IO.puts "Não pulou"

# * IO.write -> escreve na saída padrão
# Não pula linha
