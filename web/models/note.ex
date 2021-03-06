defmodule Diary.Note do
  use Diary.Web, :model

  schema "notes" do
    field :body, :string
    field :mood, :string

    timestamps
  end

  @required_fields ~w(body mood)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If `params` are nil, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
