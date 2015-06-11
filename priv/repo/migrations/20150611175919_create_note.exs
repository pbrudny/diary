defmodule Diary.Repo.Migrations.CreateNote do
  use Ecto.Migration

  def change do
    create table(:notes) do
      add :body, :string
      add :mood, :string

      timestamps
    end

  end
end
