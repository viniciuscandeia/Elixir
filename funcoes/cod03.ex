defmodule Mostrar do
	def mostrarTexto(texto, n) do
	  IO.write texto
	  imprimir_numeros(n)
	  IO.puts ""
	end

	def imprimir_numeros(n)
		when n <= 5 do
			IO.write "#{n} "
			imprimir_numeros(n + 1)
		end

	def imprimir_numeros(_), do: il
end

Mostrar.mostrarTexto("Lista: ", 1)
