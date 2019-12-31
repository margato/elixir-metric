# Metric

Metric is a module to make numbers more human-readable.

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

