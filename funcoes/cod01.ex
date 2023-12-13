
# * Comum utilizar um contexto (módulo) para as funções
# Leve semelhança a uma classe

defmodule Modulo do
  def saudacao(nome) do
    "Olá, #{nome}!"
  end
  def despedida() do
	"Tchau!"
  end
end

IO.puts Modulo.saudacao("Alícia")
IO.puts Modulo.despedida()
