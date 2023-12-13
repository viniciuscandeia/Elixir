defmodule Lasagna do

  # Tempo total no forno
  def expected_minutes_to_oven(), do: 40

  # Tempo restante no forno
  def remaining_minutes_in_oven(tempoForno) do
    expected_minutes_to_oven() - tempoForno
  end

  # Tempo para preparar as camadas
  def preparation_time_in_minutes(camadas) do
    2 * camadas
  end

  # Tempo gasto até o momento
  def total_time_in_minutes(camadas, tempoForno) do
    tempoForno + preparation_time_in_minutes(camadas)
  end

  # Informar que a lasanha terminou
  def alarm do
    "Ding!"
  end

end

IO.puts "#{Lasagna.expected_minutes_to_oven()}"
IO.puts "#{Lasagna.remaining_minutes_in_oven(20)}"
IO.puts "#{Lasagna.preparation_time_in_minutes(3)}"
IO.puts "#{Lasagna.total_time_in_minutes(3, 20)}"
IO.puts "#{Lasagna.alarm()}"
