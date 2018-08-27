defmodule DosirakWeb.Router do
  use DosirakWeb, :router

  alias Dosirak.Guardian


  pipeline :api do
    plug(:accepts, ["json"])
  end

  pipeline :jwt_authenticated do
    plug Guardian.AuthPipeline
  end

  scope "/api/v1", DosirakWeb do
    pipe_through(:api)

    post("/users", UserController, :create)
    post("/sign_in", UserController, :sign_in)
  end

  scope "/api/v1", DosirakWeb do
    pipe_through [:api, :jwt_authenticated]

    get "/my_user", UserController, :show
  end
end
