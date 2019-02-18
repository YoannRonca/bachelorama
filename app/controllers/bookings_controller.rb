class BookingsController < ApplicationController
  def new
    @bookings = Booking.new
  end

  def create
    @booking = Booking.new
  end

private

  def booking_params
    params.require(:animations).permit(:id, :name)
  end
end
