class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  devise :omniauthable, :omniauth_providers => [:facebook]

  class << self
    def find_by_facebook_omniauth(omniauth_params)
      find_by_uid(omniauth_params[:uid]) || create(user_params(omniauth_params))
    end

    private

    def user_params(params)
      {
        omniauth_token: params.credentials.token,
        omniauth_token_expired_at: params.credentials.expires_at,
        email: params.info.email,
        name: params.info.name,
        uid: params.uid,
        provider: params.provider,
        password: SecureRandom.hex(20)
      }
    end
  end
end
