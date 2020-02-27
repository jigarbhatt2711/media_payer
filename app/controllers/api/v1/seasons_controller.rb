class Api::V1::SeasonsController < ApplicationController
  def index
    seasons = Season.order(:created_at)
    render json: seasons
  end
end
