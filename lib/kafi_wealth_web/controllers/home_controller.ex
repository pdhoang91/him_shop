defmodule KafiWealthWeb.HomeController do
  use KafiWealthWeb, :controller

  def home(conn, _params) do
    render(conn, "index.html")
  end
end
