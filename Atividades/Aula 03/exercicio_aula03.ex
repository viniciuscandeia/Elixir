defmodule Vetor2d do

  def soma( {x1, y1}, {x2, y2} ) do
    { x1 + x2, y1 + y2 }
  end

  def norma({x1, y1}) do
    # Partindo da origem
    :math.sqrt(:math.pow(x1 - 0, 2) + :math.pow(y1 - 0, 2))
  end

  def quadrante( {x1, y1} ) do

    # 1 ou 4 quadrante
    if (x1 > 0) do
      if (y1 > 0) do
        1
      else
        4
      end

    # 2 ou 3 quadrante
    else
      if (y1 > 0) do
        2
      else
        3
      end
    end
  end

  def produtoInterno({x1, y1}, {x2, y2}) do
    (x1 * x2) + (y1 * y2)
  end

end

tupla = Vetor2d.soma( {1, 1}, {2, 2})
{inicio, fim} = tupla
IO.puts "#{inicio} #{fim}"

IO.puts "#{Vetor2d.norma({3, 4})}"
IO.puts "#{Vetor2d.quadrante({-1, 1})}"
IO.puts "#{Vetor2d.produtoInterno({1, 2}, {2, 1})}"
