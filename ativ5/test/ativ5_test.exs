defmodule Ativ5Test do
  use ExUnit.Case
  doctest Ativ5

  test "funcao map" do
    assert Ativ5.map([], fn x -> x * x * x end) == []
    assert Ativ5.map([1, 2, 3, 4, 5], fn x -> x * x end) == [1, 4, 9, 16, 25]
    assert Ativ5.map(["foo", "bar", "baz"],
                   fn s -> String.upcase(s) end) ==
      ["FOO", "BAR", "BAZ"]
    assert Ativ5.map([true, false, true], fn b -> not b end) == [false, true, false]
  end

  test "Tamanho de strings em uma lista" do
    assert Ativ5.tamanho_strings([]) == []
    assert Ativ5.tamanho_strings(["", "a", "000"]) == [0, 1, 3]
    muitos_nas = (1..7) |> Enum.map(fn n -> String.duplicate("na", n) end)
    assert Ativ5.tamanho_strings(muitos_nas) ==
      (1..7) |> Enum.map(fn n -> n * 2 end)
  end

  test "conversao de lista de strings para inteiros" do
    assert Ativ5.converte_para_inteiros([]) == []
    assert Ativ5.converte_para_inteiros(["0", "-1"]) == [0, -1]
    assert Ativ5.converte_para_inteiros(["999999999999999999999999999999"]) ==
      [999999999999999999999999999999]
  end

  test "Soma 100 aos elementos de uma lista" do
    assert Ativ5.soma_100_lista([]) == []
    assert Ativ5.soma_100_lista([-100]) == [0]
  end

  test "Soma deslocamento a uma lista" do
    assert Ativ5.soma_n_lista([], 1000) == []
    assert Ativ5.soma_n_lista([-10, -20, -30, -40], 50) == [40, 30, 20, 10]
    assert Ativ5.soma_n_lista([10, 100, 1000], -100) == [-90, 0, 900]
  end

  test "Adiciona prefixo" do
    assert Ativ5.adiciona_prefixo([], "pre") == []
    assert Ativ5.adiciona_prefixo(["1", "2", "3"], "0") == ["01", "02", "03"]
  end

  test "Adiciona sufixo" do
    assert Ativ5.adiciona_sufixo([], "sufixo") == []
    assert Ativ5.adiciona_sufixo(["Tyrian ", "Sim City "], "2000") ==
      ["Tyrian 2000", "Sim City 2000"]
  end

  test "fold_right" do
    assert Ativ5.fold_right([], 0, fn (x, s) -> x * s end) == 0
    assert Ativ5.fold_right([1, 2, 3, 4], 1, fn (x, s) -> x * s end ) == 24
    assert Ativ5.fold_right(["foo", "bar", "baz"], "",
                          fn (s, st) -> s <> st end) == "foobarbaz"
  end

  test "concatenacao de strings em lista" do
    assert Ativ5.concatena_strings([]) == ""
    assert Ativ5.concatena_strings([""]) == ""
    assert Ativ5.concatena_strings(["x", "", "z"]) == "xz"
  end

  test "AND em uma lista" do
    assert Ativ5.and_lista([]) == true
    assert Ativ5.and_lista([true, true, true]) == true
    assert Ativ5.and_lista([false, false, false]) == false
    assert Ativ5.and_lista([true, false, true, true]) == false
  end

  test "OR em uma lista" do
    assert Ativ5.or_lista([]) == false
    assert Ativ5.or_lista([true, true, true]) == true
    assert Ativ5.or_lista([false, false, false]) == false
    assert Ativ5.or_lista([true, false, true, true]) == true
  end

  test "fold_left" do
    assert Ativ5.fold_left([], 0, fn (a, b) -> a * b end) == 0
    assert Ativ5.fold_left([1, 2, 3], 0, fn (a, b) -> a + b end) == 6
    assert Ativ5.fold_left([5, 4, 2], 20, fn (r, x) -> r - x end) == 9
  end

  test "concatenacao de listas" do
    assert Ativ5.concatena_listas([]) == []
    assert Ativ5.concatena_listas([[], []]) == []
    assert Ativ5.concatena_listas([[1], [2, 3], [], [4], [], [5, 6]]) == [1, 2, 3, 4, 5, 6]
  end

  test "concatena strings com separador" do
    assert Ativ5.concat_strings_sep([], "##") == ""
    assert Ativ5.concat_strings_sep(["foo"], "+") == "foo"
    assert Ativ5.concat_strings_sep(["foo", "bar", "baz"], "|") == "foo|bar|baz"
  end

  test "filter" do
    assert Ativ5.filter([], fn x -> x > 0 end) == []
    assert Ativ5.filter([1, 2, 3, 4, 5], fn x -> x > 1000 end) == []
    assert Ativ5.filter([1, 2, 3, 4, 5], fn x -> x > 0 end) == [1, 2, 3, 4, 5]
    assert Ativ5.filter(["x", "foo", "tapioca"], fn s -> String.length(s) > 3 end) ==
      ["tapioca"]
  end

  test "filtra strings que contenham outra string" do
    assert Ativ5.strings_que_contem([], "test") == []
    assert Ativ5.strings_que_contem(["a", "b", "c"], "x") == []
    assert Ativ5.strings_que_contem(["ay", "by", "c"], "y") == ["ay", "by"]
  end

  test "filtra numeros n tais que 3n + 1 e' par" do
    assert Ativ5.par_3n_mais_1([]) == []
    assert Ativ5.par_3n_mais_1([2, 4, 6, 8]) == []
    assert Ativ5.par_3n_mais_1([1, 3, 7, 8]) == [1, 3, 7]
  end
end
