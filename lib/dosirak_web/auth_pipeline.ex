defmodule Dosirak.Guardian.AuthPipeline do
    use Guardian.Plug.Pipeline, otp_app: :dosirak,
    module: Dosirak.Guardian,
    error_handler: Dosirak.AuthErrorHandler
  
    plug Guardian.Plug.VerifyHeader, realm: "Bearer"
    plug Guardian.Plug.EnsureAuthenticated
    plug Guardian.Plug.LoadResource
  end