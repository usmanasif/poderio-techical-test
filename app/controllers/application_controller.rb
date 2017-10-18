class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_tenant

  def set_tenant
    # TODO: Unmock / complete this
    if params[:token] == '123'
      # Switch to the correct tenant based on token
    end
  end

end
