defmodule LargePackage.MixProject do
  use Mix.Project

  def project do
    [
      app: :large_package,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
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
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      maintainers: ["Trevor Little"],
      links: %{"Github" => repo_url()},
    ]
  end

  def reop_url do
    "https://github.com/bundacia/large_hex_package"
  end
end
