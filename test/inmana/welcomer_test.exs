defmodule Inmana.WelcomerTest do
  use ExUnit.Case

  alias Inmana.Welcomer

  describe "welcome/1" do
    test"when the user is special, returns a special message" do
      params = %{"name" => "banana", "age" => "42"}

      result = Welcomer.welcome(params)

      expected_result = {:ok, "You are very special banana"}

      assert result == expected_result
    end

    test"when the user is not special, returns a special message" do
      params = %{"name" => "Gustavo", "age" => "39"}

      result = Welcomer.welcome(params)

      expected_result = {:ok, "Welcome Gustavo"}

      assert result == expected_result
    end

    test"when the user is under age, returns an error" do
      params = %{"name" => "banana", "age" => "42"}

      result = Welcomer.welcome(params)

      expected_result = {:ok, "You shall not pass Gustavo"}

      assert result == expected_result
    end
  end
end
