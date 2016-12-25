defmodule Octopusher.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def up do
    create table(:users, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :foreign_id, :binary_id
      add :attributes, :map
      add :apn_token, :string
      add :country_code, :string
      add :locale, :string
      add :os_version, :string
      add :app_version, :string
      add :device_type, :string
      add :mobile_carrier, :string
      add :city, :string

      timestamps
    end

    execute "CREATE EXTENSION IF NOT EXISTS \"uuid-ossp\" WITH SCHEMA public;"
    execute "CREATE INDEX users_attributes_gin_index ON users USING GIN (attributes jsonb_path_ops);"
  end

  def down do
    drop table(:posts)
    execute "DROP INDEX users_attributes_gin_index;"
  end
end
