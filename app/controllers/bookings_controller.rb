class BookingsController < ApplicationController
  def show
    @bookings = Booking.all
    authorize @bookings
  end

  def new
    @booking = Booking.new
    authorize @booking
    @animation = Animation.find(params[:animation_id])
  end

  def create
    @animation = Animation.find(params[:animation_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    authorize @booking
    @booking.animation = @animation
    if @booking.save
      redirect_to user_path(current_user), notice: "\u{1F4C5} Your booking request has been sent \u{1F4C5}"
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:animation_id, :place, :arrival_time, :departure_time)
  end
end
