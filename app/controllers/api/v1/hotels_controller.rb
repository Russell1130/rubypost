# rubocop:disable Layout/HashAlignment
class Api::V1::HotelsController < ApplicationController
  def index
    data = Hotel.all
    render json: data, status: :ok
  end

  def show
    hotel = Hotel.find(params[:id])
    @service = hotel.services

    render json: {
      data: hotel,
      services: @services
    },
    status: :ok
  end

  private

  def params_hotel
    params.require(:Hotel).permit(:name, :description, :price, :location, :images)
  end
end
# rubocop:enable Layout/HashAlignment
