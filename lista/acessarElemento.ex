
# Como acessar cada elemento da lista?
numeros = [1, 2, 3, 4, 5, 6]
Enum.each(numeros, fn item -> IO.write "#{item} " end)
IO.puts ""
