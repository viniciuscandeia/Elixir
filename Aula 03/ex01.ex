defmodule Aula03 do

  # Caso base
  def soma([]), do: 0

  # Outros casos
  def soma([x | resto]) do
    x + soma(resto)
  end

end

# Invocando a função
IO.write "#{Aula03.soma([1, 2, 3, 4])} "
