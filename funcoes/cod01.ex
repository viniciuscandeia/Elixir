
# * Comum utilizar um contexto (módulo) para as funções
# Leve semelhança a uma classe

defmodule Modulo do
  def saudacao(nome) do
    "Olá, #{nome}!"
  end
  def despedida() do
	"Tchau!"
  end

  def insere_em_ordem([], elem), do: [elem]
  def insere_em_ordem([cabeca | cauda], elem) when cabeca < elem, do: [cabeca | insere_em_ordem(cauda, elem)]
  def insere_em_ordem(lista, elem), do: [elem | lista]

  def sort([]), do: []
  def sort([cabeca | cauda]), do: insere_em_ordem(sort(cauda), cabeca)

  def flatten([cabeca | cauda]) when is_list(x) do

  end


end

IO.puts Modulo.saudacao("Alícia")
IO.puts Modulo.despedida()
