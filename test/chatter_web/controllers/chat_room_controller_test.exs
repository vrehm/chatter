# test/chatter_web/controllers/chat_room_controller_test.exs

defmodule ChatterWeb.ChatRoomControllerTest do
    use ChatterWeb.ConnCase, async: true
  
    describe "create/2" do
      test "renders new page with errors when data is invalid", %{conn: conn} do
        insert(:chat_room, name: "elixir")
        params = string_params_for(:chat_room, name: "elixir")
  
        response =
          conn
          |> post(Routes.chat_room_path(conn, :create), %{"room" => params})
          |> html_response(200)
  
        assert response =~ "has already been taken"
      end
    end
  end