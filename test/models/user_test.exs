defmodule Octopusher.UserTest do
  use Octopusher.ModelCase

  alias Octopusher.User

  test "set attributes" do
    changeset = User.changeset(%User{}, %{attributes: %{email: "j.jaffeux@gmail.com"}})
    assert changeset.valid?
  end
end
