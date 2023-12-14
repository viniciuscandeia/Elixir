require Integer

defmodule Ativ2 do
  @moduledoc """
  Atividade 2 da disciplina Programação Funcional - 2023.2
  """

  # Exercícios com funções simples

  # Escreva o corpo das funções abaixo, seguindo o comportamento
  # especificado pela documentação. Para exemplos de cada
  # função, consulte o arquivo ativ2_test.exs no diretorio 'test'

    @doc "Multiplica o numero passado como parametro por 5."
    def mult5(x) do
      5 * x
    end

    @doc "Calcula o quadrado do numero x"
    def quadrado(x) do
      x * x
    end

    @doc "Calcula a soma dos quadrados de x e y: x ao quadrado + y ao quadrado."
    def soma_quadrados(x, y) do
      quadrado(x) + quadrado(y)
    end

    @doc "Concatena as duas strings a e b."
    def concat(a, b) do
      a <> b
    end

    @doc "Efetua a negacao logica (NOT) do booleano a."
    def negacao(a) do
      !a
    end

    @doc "Efetua o E-logico (AND) dos dois booleanos a e b."
    def e_logico(a, b) do
      a && b
    end

    @doc """
    Centraliza a string str em um campo de tamanho largura,
    adicionando espacos antes e depois da string, dependendo
    do tamanho. Se não for possível dividir os espaços
    igualmente, colocar um espaço a mais do lado esquerdo
    (antes da string). Assuma que a largura sempre é maior
    que o tamanho da string.

    iex> Ativ2.centraliza("teste", 13)
    "    teste    "
    iex> Ativ2.centraliza("teste", 12)
    "    teste   "
    """
    def centraliza(str, largura) do

      # Tamanho da string
      tamanhoStr = String.length(str)

      # Desconsiderando o tamanho da string na largura
      quantidadeEspacos = largura - tamanhoStr

      # Se for par -> quantidade de espaços igualmente dividida
      # Se for ímpar -> lado esquerdo == lado direito + 1

      espacosDireita = Integer.floor_div(quantidadeEspacos, 2)

      # Se par -> 0
      # Se ímpar -> 1
      espacosEsquerda = espacosDireita + rem(quantidadeEspacos, 2)

      # Montando a nova string
      concat(concat(String.duplicate(" ", espacosEsquerda), str), String.duplicate(" ", espacosDireita))

    end
    # Dica: olhe a documentação para String.duplicate
    # A função Integer.floor_div também pode ser útil
end
