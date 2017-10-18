class UsersController < ApplicationController

  skip_before_action :set_tenant, only: [:authenticate]

  def authenticate
    # TODO: unmock this:
    # Create a model user with login, password, token and tenant_id and do a proper login
    if params[:password] == '123456'
      render json: {:status => 'ok', token: '123'}.to_json, status: 200
    else
      render json: {:status => 'no_pwd'}.to_json, status: 200
    end
  end

end
