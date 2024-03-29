defmodule ProvoLiveWeb.Router do
  use ProvoLiveWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug Phoenix.LiveView.Flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ProvoLiveWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/mylive", PageController, :mylive
  end

  # Other scopes may use custom stacks.
  # scope "/api", ProvoLiveWeb do
  #   pipe_through :api
  # end
end
