defmodule Octopusher.User do
  use Octopusher.Web, :model

  schema "users" do
    field :foreign_id, :binary_id
    field :attributes, :map
    field :apn_token, :string
    field :country_code, :string
    field :locale, :string
    field :os_version, :string
    field :app_version, :string
    field :device_type, :string
    field :mobile_carrier, :string
    field :city, :string

    timestamps
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [
      :foreign_id,
      :attributes,
      :apn_token,
      :country_code,
      :locale,
      :os_version,
      :app_version,
      :device_type,
      :mobile_carrier,
      :city
    ])
  end
end
