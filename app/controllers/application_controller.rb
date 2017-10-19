class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_tenant

  protected

  def set_tenant
    Apartment::Tenant.switch!(current_tenant.tenant_key)
  end

  def current_user
    @current_user ||= User.find_by(token: params[:token])
  end

  def current_tenant
    @current_tenant ||= current_user.tenant
  end
end
