defmodule Diary.PageController do
  use Diary.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end
end
