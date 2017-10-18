class Tenant < ApplicationRecord

  after_create :create_tenant

  private
  def create_tenant
    if ActiveRecord::Base.connection.view_exists? tenant_key
      Apartment::Tenant.drop(tenant_key)
    end
    Apartment::Tenant.create(tenant_key)
  end
end
