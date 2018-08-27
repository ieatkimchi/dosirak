defmodule DosirakWeb.Router do
  use DosirakWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", DosirakWeb do
    pipe_through :api
  end
end
