class Api::V1::ConnectionsController < ApplicationController
  def index
    connection_id = rand(10_000...90_000)
    
    render json: { connection_id: connection_id }, status: 200
  end
end
