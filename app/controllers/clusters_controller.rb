class ClustersController < ApplicationController

  def index
    # TODO: Unmock this.
    # Return all the clusters of the user's tenant based on the received token
    # Remember to implemente ApplicationController#set_tenant
    if params[:token] == '123'
      clusters = [{id: 1, name: 'Cluster 1 - Tenant 1'}, {id: 2, name: 'Cluster 2 - Tenant 1'}]
    elsif params[:token] == '345'
      clusters = [{id: 1, name: 'Cluster 1 - Tenant 2'}]
    end
    render json: clusters.to_json, status: 200
  end

end
