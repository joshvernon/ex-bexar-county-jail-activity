defmodule JailActivity.MixProject do
  use Mix.Project

  def project do
    [
      app: :jail_activity,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      # Use Hound from the GitHub master branch instead of the latest Hex
      # version (1.1.0)  to avoid this [issue](https://github.com/HashNuke/hound/issues/232).
      # {:hound, "~> 1.1"}
      {:hound, github: "HashNuke/hound", branch: "master"}
    ]
  end
end
