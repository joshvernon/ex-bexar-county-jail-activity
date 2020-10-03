defmodule JailActivity.Scrape.Downloader do
  def download_report(link) do
    url = to_charlist(link)
    {:ok, {{'HTTP/1.1', 200, 'OK'}, _headers, body}} = :httpc.request(:get, {url, []}, [], [])
    {:ok, body}
  end
end
