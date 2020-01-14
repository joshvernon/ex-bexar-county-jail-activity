defmodule JailActivity.DriverTest do
  use ExUnit.Case, async: true

  @tag :selenium
  test "there are seven links" do
    {:ok, links} = JailActivity.Driver.get_report_links()
    assert length(links) == 7
  end
end
