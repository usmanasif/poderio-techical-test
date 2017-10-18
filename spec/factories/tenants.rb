FactoryGirl.define do
  factory :tenant_1, class: Tenant do
    name 'My Tenant 1'
    tenant_key 'my_tenant_1'
  end

  factory :tenant_2, class: Tenant do
    name 'My Tenant 2'
    tenant_key 'my_tenant_2'
  end
end