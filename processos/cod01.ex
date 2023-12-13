defmodule ExemploProcessoLeve do
  def iniciar_processo do
    IO.puts("Iniciando processo principal")

    # Criando um novo processo
    processo_leve = spawn(&processo_leve_funcao/0)

    IO.puts("Processo principal continua executando")

    # Aguarda um pouco para permitir que o processo leve execute
    :timer.sleep(1000)

    IO.puts("Processo principal encerrado")
  end

  defp processo_leve_funcao do
    IO.puts("Iniciando processo leve")

    # Simula alguma lógica de processamento leve
    :timer.sleep(2000)

    IO.puts("Processo leve encerrado")
  end
end

# Iniciar o exemplo
ExemploProcessoLeve.iniciar_processo()
