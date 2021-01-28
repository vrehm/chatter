# lib/chatter_web/controllers/chat_room_controller.ex
defmodule ChatterWeb.ChatRoomController do
    use ChatterWeb, :controller
    def index(conn, _params) do
        render(conn, "index.html")
      end
  end