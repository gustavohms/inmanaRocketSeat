defmodule InmanaWeb.SuppliesView do
  use InmanaWeb, :view

  def render("create.json", %{supply: supply}) do
    %{
      messsage: "Supply created",
      supply: supply
    }
  end

  def render("show.json", %{supply: supply}), do: %{supply: supply}



end
