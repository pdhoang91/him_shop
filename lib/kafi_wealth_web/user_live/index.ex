defmodule KafiWealthWeb.UserLive.Index do
  use KafiWealthWeb, :live_view

  alias KafiWealth.Users
  alias KafiWealthWeb.Router.Helpers, as: Routes

  def mount(_params, _session, socket) do
    if connected?(socket), do: Users.subscribe()
    {:ok, assign(socket, page: 1, per_page: 5)}
  end

  def handle_params(params, _url, socket) do
    {page, ""} = Integer.parse(params["page"] || "1")
    {:noreply, socket |> assign(page: page) |> fetch()}
  end

  defp fetch(socket) do
    %{page: page, per_page: per_page} = socket.assigns
    users = Users.list_users(page, per_page)
    assign(socket, users: users, page_title: "Listing Users – Page #{page}")
  end

  def handle_info({Users, [:user | _], _}, socket) do
    {:noreply, fetch(socket)}
  end

  def handle_event("keydown", %{"key" => "ArrowLeft"}, socket) do
    {:noreply, go_page(socket, socket.assigns.page - 1)}
  end
  def handle_event("keydown", %{"key" => "ArrowRight"}, socket) do
    {:noreply, go_page(socket, socket.assigns.page + 1)}
  end
  def handle_event("keydown", _, socket), do: {:noreply, socket}

  def handle_event("delete_user", %{"id" => id}, socket) do
    user = Users.get_user!(id)
    {:ok, _user} = Users.delete_user(user)

    {:noreply, socket}
  end

  defp go_page(socket, page) when page > 0 do
    push_patch(socket, to: Routes.user_index_path(socket, :index, page: page))
  end
  defp go_page(socket, _page), do: socket
end
