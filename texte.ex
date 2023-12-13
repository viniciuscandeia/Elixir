lista_original = [1, 2, 4, 5]
novo_elemento = 3

indice_insercao = 2  # Índice baseado em zero

# Dividir a lista no índice de inserção
{inicio, fim} = Enum.split(lista_original, indice_insercao)

# Construir a nova lista com o novo elemento no meio
nova_lista = inicio ++ [novo_elemento] ++ fim

Enum.each(nova_lista, fn item -> IO.puts "Número: #{item}" end)


# Resultado: [1, 2, 3, 4, 5]
