defmodule MetricTest do
  use ExUnit.Case
  doctest Metric

  test "prettify numbers" do
    assert Metric.prettify(1000000) == {:ok, "1M"}
    assert Metric.prettify(99999999999, :extense) == {:ok, "99 Billion"}
    assert Metric.prettify(100) == {:ok, "100"}
    assert Metric.prettify(-5000) == {:ok, "-5K"}
    assert Metric.prettify(1000) == {:ok, "1K"}
  end
end
