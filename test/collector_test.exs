defmodule CollectorTest do
  use ExUnit.Case, async: true

  alias JailActivity.Scrape.Collector

  @tag :selenium
  test "there are seven links" do
    {:ok, links} = Collector.get_report_links()
    assert length(links) == 7
  end
end
