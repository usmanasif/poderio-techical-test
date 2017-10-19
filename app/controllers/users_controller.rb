class UsersController < ApplicationController

  skip_before_action :set_tenant, only: [:authenticate]

  def authenticate
    if user
      render json: { status: 'ok', token: user.token }, status: 200
    else
      render json: { status: 'no_pwd' }, status: 200
    end
  end

  private

  def user
    @user ||= User.authenticate(params[:username], params[:password])
  end

end
