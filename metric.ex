defmodule Metric do

  defp get_multiplier(number) do
    length = number |> String.length
    if length > 3 do
      result = length / 3 - 1
      ceil(result)
    end
  end

  defp get_unit(multiplier, short) do
    map = %{
      :short => %{
        :default => "K",
        2 => "M",
        3 => "B",
        4 => "T"
      },
      :extense => %{
        :default => " Thousand",
        2 => " Million",
        3 => " Billion",
        4 => " Trillion"
      }
    }
    result = map[short][multiplier]
    if result == nil, 
      do: List.duplicate(map[short][:default], multiplier),
      else: List.duplicate(result, 1)
  end

  defp get_sliced_number(number, short) do
    length = number |> String.length
    if length > 3 do
      multiplier = get_multiplier(number)
      number = number |> String.slice(0, length - 3 * multiplier)
      metric = get_unit(multiplier, short) |> Enum.join
      number <> metric
    else 
      number
    end  
  end
  
  defp get_signal(number) do
    signal = number |> String.at(0)
    if signal == "-" || signal == "+" do
      {:ok, signal}
    end
    ""
  end

  defmodule InvalidInputType do
    defexception message: "Input is not a number"
  end

  def prettify(number, short \\ :short) do
    unless is_number(number) do
      raise InvalidInputType
    end
    number = to_string(number) |> String.split(".") |> List.first  
    signal = get_signal(number)
    with signal do
      number = number |> String.slice(1..-1)
    end
    {:ok, signal <> get_sliced_number(number, short)} 
  end

end
