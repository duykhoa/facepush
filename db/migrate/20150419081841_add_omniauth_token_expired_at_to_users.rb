class AddOmniauthTokenExpiredAtToUsers < ActiveRecord::Migration
  def change
    add_column :users, :omniauth_token_expired_at, :string
  end
end
