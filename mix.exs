defmodule Whatwasit.Mixfile do
  use Mix.Project

  def project do
    [app: :whatwasit,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:ecto, "~> 2.0"}
    ]
  end
end
