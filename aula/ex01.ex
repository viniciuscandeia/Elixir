defmodule Lasagna do

  # Tempo total no forno
  def expected_minutes_to_oven(), do: 40

  # Tempo restante no forno
  def remaining_minutes_in_oven(tempoAtual) do
    expected_minutes_to_oven() - tempoAtual
  end
end

IO.puts "#{Lasagna.expected_minutes_to_oven()}"
IO.puts "#{Lasagna.remaining_minutes_in_oven(10)}"
