class Api::V1::BookingsController < ApplicationController
  before_action :authenticate

  def index
    all_booking = @current_user.bookings.ordering
    all_hotel = @current_user.hotels
    render json: {
      data: {
        reservations: all_booking,
        reserved_hotels: all_hotel
      }
    }
  end

  def create
    booking = @current_user.bookings.new(booking_params)
    if booking.save
      render json: {
        data: booking
      }
    else
      head(:unprocessable_entity)
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:arrival, :departure, :room, :guest, :hotel_id)
  end

  def authenticate
    authenticate_or_request_with_http_token do |token, _options|
      @current_user = User.find_by(authentication_token: token)
    end
  end
end
