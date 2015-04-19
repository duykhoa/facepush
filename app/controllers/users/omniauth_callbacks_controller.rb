class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    user = User.find_by_facebook_omniauth(omniauth_params)

    sign_in user
    redirect_to root_path
  end

  private

  def omniauth_params
    request.env["omniauth.auth"]
  end
end
