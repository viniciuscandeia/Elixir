
# # Objetivo: criar um algoritmo que, utilizando funções, adicione um
# # elemento em uma lista

numeros = [1, 2, 3, 4, 5]
novoNumero = 0

defmodule Modulo do
	def adicionarElemento(lista, numero, posicao) do

		# Se a posição não é válida
		if posicao > Enum.count(lista) or posicao < -1 do
			IO.puts "Posição fora da lista!"
		  	lista
		else
			case posicao do
				# -1 -> inserir no fim
				-1 ->
					novaLista = lista ++ [numero]
					novaLista
				# _ != 1 -> inserir na posição desejada
				_ ->
					{inicio, fim} = Enum.split(lista, posicao)
					novaLista = inicio ++ [numero] ++ fim
					novaLista
			end
		end
	end
end

lista = Modulo.adicionarElemento(numeros, novoNumero, -2)
IO.write "Lista: "
Enum.each(lista, fn item -> IO.write "#{item} " end)
IO.puts ""
