# Metric

Metric is a module to make numbers more human-readable.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `metric` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:metric, "~> 0.1.0"}
  ]
end
```

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

