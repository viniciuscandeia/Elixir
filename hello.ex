
# * IO.puts -> escrever na saída padrão
# Pula linha sozinho
# Usar #{} para mostrar uma variável

IO.puts "Hello, World!"

nome = "Elixir"
IO.puts("Bem-vindo ao #{nome}")

numeros = [1, 2, 3, 4, 5]

# * Head and tail
# Pega o primeiro e o resto
[primeiro | resto] = numeros

# Para pegar o 2°?
[segundo | novoResto] = resto

IO.puts "Primeiro elemento: #{primeiro}"
IO.puts "Segundo elemento: #{segundo}"

Enum.each(numeros, fn item -> IO.puts "Número: #{item}" end)

# Lista é mutável? Sim
numeros = [0]

IO.puts "Nova lista: "
Enum.each(numeros, fn item -> IO.puts "Número: #{item}" end)

Enum.each(resto, fn elemento ->
  IO.puts "Elemento: #{elemento}"
end)
