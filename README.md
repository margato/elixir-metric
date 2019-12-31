# Metric

Metric is a module to make numbers more human-readable.

## (Docs)[https://hexdocs.pm/metric]

## Installation

This package can be installed by adding `metric` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:metric, "~> 0.1.0"}
  ]
end
```
[See in Hex](https://hex.pm/packages/metric)

### Examples
```elixir
iex> Metric.prettify(1000000)
{:ok, "1M"}

iex> Metric.prettify(99999999999, :extense)
{:ok, "99 Billion"}

iex> Metric.prettify(100)
{:ok, "100"}

iex> Metric.prettify(1000)
{:ok, "1k"}
```

