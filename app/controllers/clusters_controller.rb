class ClustersController < ApplicationController

  def index
    clusters = Cluster.all
    render json: clusters.to_json, status: 200
  end

end
