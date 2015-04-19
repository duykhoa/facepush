class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    #render json: { login: :success, auth: request.env["omniauth.auth"] }
    user = User.find_by_facebook_omniauth(omniauth_params)

    render json: { login: :success, auth: request.env["omniauth.auth"] }
    #sign_in user
  end

  private

  def omniauth_params
    request.env["omniauth.auth"]
  end
end
