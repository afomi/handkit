defmodule Handkit.MixProject do
  use Mix.Project

  def project do
    [
      app: :handkit,
      version: "0.2.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "Handkit",
      description: "Handkit is an Elixir client for the Handcash Connect API.",
      source_url: "https://github.com/libitx/handkit",
      docs: [
        main: "Handkit"
      ],
      package: [
        name: "handkit",
        files: ~w(lib .formatter.exs mix.exs README.md LICENSE),
        licenses: ["Apache-2.0"],
        links: %{
          "GitHub" => "https://github.com/libitx/handkit"
        }
      ]
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
    [
      {:bsv, "~> 2.1"},
      {:curvy, "~> 0.3"},
      {:ex_doc, "~> 0.32.0", only: :dev, runtime: false},
      {:inflex, "~> 2.0"},
      {:jason, "~> 1.4.4"},
      {:tesla, "~> 1.14.1"}
    ]
  end
end
