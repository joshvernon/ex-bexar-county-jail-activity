# JailActivity

Elixir web scraper for Bexar County [jail activity reports](https://www.bexar.org/722/Jail-Activity-Reports).  
The scraping is done with [Hound](https://github.com/HashNuke/hound), using the Selenium Firefox WebDriver.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `jail_activity` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:jail_activity, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/jail_activity](https://hexdocs.pm/jail_activity).

## Prerequisites

- Install Firefox.
- Download the latest version of the [Selenium Server jar](https://selenium.dev/downloads/).
- Download and unzip the latest version of [geckodriver](https://github.com/mozilla/geckodriver/releases), and make sure the executable is available on your `PATH`.
- Start the Selenium Server jar.
  ```
  # The version number in your jar filename might be different.
  java -jar selenium-server-standalone-3.141.59.jar
  ```
