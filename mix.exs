defmodule AnsiToHTML.Mixfile do
  use Mix.Project

  def project do
    [
      app: :ansi_to_html,
      version: "0.1.0",
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),

      name: "AnsiToHTML",
      source_url: "https://github.com/stephlow/ansi_to_html",
      homepage_url: "https://github.com/stephlow/ansi_to_html",
      docs: [main: "readme", extras: ["README.md"]]
    ]
  end

  def application do
    [extra_applications: [:phoenix_html]]
  end

  defp deps do
    [
      {:phoenix_html, "~> 2.6"},
      {:credo, "~> 0.5", only: [:dev, :test]},
      {:ex_doc, "~> 0.14", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      maintainers: ["Stephan Lagerwaard"],
      licenses: ["MIT"],
      links: %{github: "https://github.com/stephlow/ansi_to_html"},
      files: ["lib", "mix.exs", "README.md", "LICENSE"]
  end
end