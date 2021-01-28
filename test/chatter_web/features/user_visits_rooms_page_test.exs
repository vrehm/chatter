# test/chatter_web/features/user_visits_rooms_page_test.exs

defmodule ChatterWeb.UserVisitsRoomsPageTest do
    use ChatterWeb.FeatureCase, async: true
  
    test "user visits rooms page to see a list of rooms", %{session: session} do
      room = insert(:chat_room)
  
      session
      |> visit(Routes.chat_room_path(@endpoint, :index))
      |> assert_has(Query.css(".room", text: room.name))
    end
  end