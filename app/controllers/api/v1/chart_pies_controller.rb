class Api::V1::ChartPiesController < ApplicationController
  def index
    render json: { langs: Lang.select('id, name, data, color') }, status: 200
  end
end
