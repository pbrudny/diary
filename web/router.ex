defmodule Diary.Router do
  use Diary.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Diary do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/notes", NoteController
  end

  # Other scopes may use custom stacks.
  # scope "/api", Diary do
  #   pipe_through :api
  # end
end
