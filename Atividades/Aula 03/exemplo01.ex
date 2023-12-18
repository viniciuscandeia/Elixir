defmodule Aula3 do

  # Collatz
  def collatz(n) do

    # Caso par: divide por 2
    if rem(n, 2) == 0 do
      div(n, 2)

    # Case ímpar: multiplica por 3 e soma 1
    else
      3 * n + 1
    end
  end

  # Valor absoluto
  def abs(n) when n >= 0, do: n
  def abs(n), do: -n

  def reflete_x( {x, y} ) do
    {x, -y}
  end

end

# IO.puts "#{Aula3.collatz(1)}"
# IO.puts "#{Aula3.abs(-10)}"

tupla = Aula3.reflete_x( {1, 3} )
{inicio, fim} = tupla
IO.puts "#{inicio} #{fim}"
