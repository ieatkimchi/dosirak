defmodule DosirakWeb.Router do
  use DosirakWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/api/v1", DosirakWeb do
    pipe_through(:api)

    resources("/users", UserController, only: [:create, :show])
  end
end
