defmodule LargePackage.MixProject do
  use Mix.Project

  def project do
    [
      app: :large_package,
      version: "0.1.0",
      elixir: "~> 1.6",
      description: "A Large Hex Package for testing publishing",
      source_url: repo_url(),
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
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      maintainers: ["Trevor Little"],
      links: %{"Github" => repo_url()},
    ]
  end

  def repo_url do
    "https://github.com/bundacia/large_hex_package"
  end
end
