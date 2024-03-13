defmodule Ativ3 do
  @moduledoc "Codigo para a Atividade 3 da disciplina Programacao Funcional"

  @doc "Retorna o primeiro elemento da lista l, ou nil caso l tenha menos de 1 elemento."
  def primeiro([]), do: nil
  def primeiro([head | _]), do: head

  @doc "Retorna o terceiro elemento da lista l, ou nil caso l tenha menos de 3 elementos."
  def terceiro([]), do: nil
  def terceiro([_, _, third | _]), do: third
  def terceiro(_), do: nil

  @doc "Retorna o elemento n da lista l, ou nil caso l tenha menos de 3 elementos."
  def elemento_n([], _), do: nil
  def elemento_n([head | _], 0), do: head
  def elemento_n([_ | tail], n), do: elemento_n(tail, n - 1)

  @doc "Obtem o tamanho da lista l"
  def tamanho([]), do: 0
  def tamanho([_ | tail]), do: 1 + tamanho(tail)

  # Um tipo comum de processamento de lista e' calcular um resultado levando
  # em consideracao todos os elementos da lista, por exemplo a soma ou
  # produto de uma lista de numeros.

  @doc "Calcula a soma dos numeros da lista l."
  def soma_lista([]), do: 0
  def soma_lista([ head | tail ]), do: head + soma_lista(tail)

  @doc "Calcula o produto dos numeros da lista l."
  def mult_lista([]), do: 1
  def mult_lista([ 0 | _ ]), do: 0
  def mult_lista([ head | tail ]), do: head * mult_lista(tail)

  # Opcional: escreva uma versao de mult_lista que retorne zero assim que
  # encontrar um elemento 0 na lista, sem precisar ir ate' o fim da lista
  # e efetuar todas as multiplicacoes.

  @doc "Retorna uma string que e' a concatenacao de todas as strings na lista ls."
  def concat_lista(ls), do: Enum.join(ls, "")

  @doc "Retorna o maior numero em uma lista de numeros (nil se a lista for vazia)."
  def max_lista([]), do: nil
  def max_lista([head | tail]), do: max_lista(tail, head)

  defp max_lista([], max), do: max
  defp max_lista([head | tail], max) when head > max, do: max_lista(tail, head)
  defp max_lista([_head | tail], max), do: max_lista(tail, max)

  # As vezes podemos querer uma parte dos elementos da lista, sejam
  # os primeiros ou ultimos.

  @doc """
  Retorna os primeiros n elementos da lista l.
  Se l tem n elementos ou menos, retorna a lista inteira.

  Exemplo:
  iex> Ativ3.primeiros_n([1, 2, 3, 4], 2)
  [1, 2]
  """
  def primeiros_n(_, 0), do: []
  def primeiros_n([], _n), do: []
  def primeiros_n([head | tail], n) when n > 0 do
    [head | primeiros_n(tail, n - 1)]
  end

  @doc """
  Retorna os ultimos n elementos da lista l.
  Se l tem n elementos ou menos, retorna a lista inteira.

  Exemplo:
  iex> Ativ3.ultimos_n([1, 2, 3, 4], 2)
  [3, 4]
  """
  def ultimos_n(l, n) when n >= 0 do
    :lists.reverse(primeiros_n(:lists.reverse(l), n))
  end

  # Em algumas situacoes, queremos transformar cada elemento de uma lista da
  # mesma forma, obtendo uma nova lista com os resultados.

  @doc """
  Dada uma lista de numeros, retorna uma nova lista com os numeros da lista
  original, multiplicados por 2.

  Exemplo:
  iex> Ativ3.dobro_lista([1, 2, 3, 4])
  [2, 4, 6, 8]
  """
  def dobro_lista(lista) do
    Enum.map(lista, &(&1 * 2))
  end

  @doc """
  Dada uma lista de numeros, retorna uma nova lista com os numeros da lista
  original elevados ao quadrado.

  Exemplo:
  iex> Ativ3.quadrado_lista([1, 2, 3, 4])
  [1, 4, 9, 16]
  """
  def quadrado_lista(lista) do
    Enum.map(lista, &(&1 * &1))
  end

  # Uma outra necessidade comum e' selecionar apenas os elementos de uma lista
  # que possuem alguma propriedade, por exemplo apenas os numeros positivos, ou
  # apenas as strings que comecam com uma letra maiuscula.

  @doc """
  Dada uma lista de numeros, retorna uma nova lista com os numeros positivos
  da lista original.

  Exemplo:
  iex> Ativ3.positivos_lista([-2, 2, 0, 88, 15, -11, 42])
  [2, 88, 15, 42]
  """
  def positivos_lista(lista) do
    Enum.filter(lista, &(&1 > 0))
  end

  # @doc "Retorna apenas os numeros pares de uma lista de numeros."
  # def pares_lista(lista) do
  #   Enum.filter(lista, fn x -> rem(x, 2) == 0 end)
  # end

  # Podemos querer fazer operacoes no agregado, combinando os elementos
  # de mesma posicao em duas listas, gerando uma terceira lista. Por exemplo,
  # somar as listas [1, 2, 3] e [4, 5, 6] elemento a elemento, resultando na
  # lista [5, 7, 9].

  @doc """
  Dadas duas listas de numeros, retorna uma lista com a soma de cada elemento
  de mesma posicao nas duas listas. Se uma das listas for menor que a outra,
  retorna uma lista do tamanho da menor.

  Exemplo:
  iex> Ativ3.soma_listas([1, 2, 3], [7, 8, 9, 3])
  [8, 10, 12]
  """
  def soma_listas(lista1, lista2) do
    Enum.zip(lista1, lista2)
    |> Enum.map(fn {x, y} -> x + y end)
  end

  @doc """
  Dadas duas listas de strings l1 e l2, retorna uma lista em que cada elemento
  e' a concatenacao dos elementos de mesma posicao em l1 e l2.
  Se uma das listas for menor que a outra, retorna uma lista do tamanho da menor.

  Exemplo:
  iex> Ativ3.concat_listas(["a", "b", "c"], ["x", "y", "z"])
  ["ax", "by", "cz"]
  """
  def concat_listas(l1, l2) do
    Enum.zip(l1, l2)
    |> Enum.map(fn {s1, s2} -> s1 <> s2 end)
  end

  # Algumas outras manipulacoes de listas.

  # Dica: para append, e' possivel resolver apenas fazendo recursao e seguindo
  # a estrutura de uma das listas e pensando qual deve ser a resposta quando essa
  # lista for vazia.

  @doc """
  Junta/concatena duas listas, retornando uma lista com todos os elementos da
  primeira seguidos pelos elementos da segunda.

  Exemplo:
  iex> Ativ3.append([1, 2, 3], [4, 5, 6])
  [1, 2, 3, 4, 5, 6]
  """
  def append(l1, l2), do: l1 ++ l2

  # Dica: para a funcao a seguir, pode ser necessario definir uma funcao auxiliar.

  @doc """
  Retorna uma lista apenas com os elementos de posição (índice) par na lista l.
  Considere o primeiro elemento como posição 1 (e não 0 como seria o índice).

  Exemplo:
  iex> Ativ3.posicoes_pares([2, 4, 6, 8, 10])
  [4, 8]
  """
  def posicoes_pares(l) do
    Enum.with_index(l)
    |> Enum.filter(fn {_el, index} -> rem(index + 1, 2) == 0 end)
    |> Enum.map(fn {el, _index} -> el end)
  end

# def fold([], i, _), do: i
# def fold([head | tail], i, f), do: f.(head, fold(tail, i, f))

# def soma_lista(l), do: fold(l, 0, fn a, b -> a + b end)
# def mult_lista(l), do: fold(l, 1, fn a, b -> a * b end)


# def pares_lista([]), do: []
# def pares_lista([x | r]) do
#   if rem(x, 2) == 0, do: [x | pares_lista(r)], else: pares_lista(r)
# end

# def nao_vazias([]), do: []
# def nao_vazias([s | r]) do
#   if String.length(s) > 0, do: [s | nao_vazias(r)], else: nao_vazias(r)
# end

  # Recebe uma função (fun) e uma lista
  # Caso base: se a lista estiver vazia, retorna uma lista vazia
  def filter(_, []), do: []
  def filter(fun, [head | tail]) do
    # Se a função retornar verdadeiro para o primeiro elemento da lista
    if fun.(head) do
      # Adiciona o elemento à lista resultante e chama filter recursivamente para o restante da lista
      [head | filter(fun, tail)]
    else
      # Se a função retornar falso, chama filter recursivamente apenas para o restante da lista
      filter(fun, tail)
    end
  end

  # Definição da função pares_lista
  # Recebe uma lista de números
  def pares_lista(lista) do
    # Usa a função filter para filtrar os números pares da lista
    filter(fn x -> rem(x, 2) == 0 end, lista)
  end

  # Definição da função nao_vazias
  # Recebe uma lista de strings
  def nao_vazias(lista) do
    # Usa a função filter para filtrar as strings não vazias da lista
    filter(fn s -> String.length(s) > 0 end, lista)
  end

end
