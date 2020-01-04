defmodule JailActivity.Downloader do
  use Hound.Helpers

  @doc """
  Returns a list of links to jail activity reports.

  Selenium must be running before this function can be called successfully.

  Uses these Hound helper functions:
  - `navigate_to/2`
  - `find_all_elements/3`
  - `attribute_value/2`
  """
  def get_report_links do
    Hound.start_session()
    navigate_to("https://www.bexar.org/722/Jail-Activity-Reports")

    links =
      find_all_elements(:link_text, "State and County")
      |> Enum.map(&attribute_value(&1, "href"))

    Hound.end_session()

    links
  end
end
