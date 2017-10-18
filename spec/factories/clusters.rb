FactoryGirl.define do

  factory :cluster_1_tenant_1, class: Cluster do
    name 'Cluster 1 - Tenant 1'
  end

  factory :cluster_2_tenant_1, class: Cluster do
    name 'Cluster 2 - Tenant 1'
  end

  factory :cluster_1_tenant_2, class: Cluster do
    name 'Cluster 1 - Tenant 2'
  end

end
