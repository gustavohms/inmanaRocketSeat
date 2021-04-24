defmodule Inmana.RestaurantTest do
  use Inmana.DataCase

  describe "changeset/1"do
    test "When all params area valid, returns a valid changeset" do
      params = %{name: "Siri cascudo", email: "siri@cascudo.com"}

      response = Restaurant.changeset(params)

      assert response == "banana"
    end
  end
end
