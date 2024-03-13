
defmodule Modulo do

  def insere_em_ordem([], elem), do: [elem]
  def insere_em_ordem([cabeca | cauda], elem) when cabeca < elem, do: [cabeca | insere_em_ordem(cauda, elem)]
  def insere_em_ordem(lista, elem), do: [elem | lista]

  def sort([]), do: []
  def sort([cabeca | cauda]), do: insere_em_ordem(sort(cauda), cabeca)

  def flatten([]), do: []
  def flatten([head | tail]) when is_list(head), do: flatten(head) ++ flatten(tail)
  def flatten([head | tail]), do: [head | flatten(tail)]

end

lista = [[1, 2], 0, [3, 4]]

listaNova = Modulo.flatten(lista)
Enum.each(listaNova, fn item -> IO.puts "Número: #{item}" end)
