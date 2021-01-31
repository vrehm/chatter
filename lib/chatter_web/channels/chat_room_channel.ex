# lib/chatter_web/channels/chat_room_channel.ex

defmodule ChatterWeb.ChatRoomChannel do
    use ChatterWeb, :channel

    def join("chat_room:" <> _room_name, _msg, socket) do
        {:ok, socket}
    end
end