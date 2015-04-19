class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    render json: { login: :success, auth: request.env["omniauth.auth"] }
  end
end
