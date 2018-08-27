defmodule DosirakWeb.Router do
  use DosirakWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/api/v1", DosirakWeb do
    pipe_through(:api)

    post("/users", UserController, :create)
  end
end
