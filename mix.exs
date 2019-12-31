defmodule Teste.MixProject do
  use Mix.Project

  def project do
    [
      app: :metric,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: description()
    ]
  end
  
  defp description do
    """
    Metric is a module to make numbers more human-readable.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Osvaldo Margato"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/margato/elixir-metric"}
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [{:ex_doc, ">= 0.0.0", only: :dev}]
  end

end
