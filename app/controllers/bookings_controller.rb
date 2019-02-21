class BookingsController < ApplicationController
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
      redirect_to animation_path(@animation), notice: "Your booking request has been sent"
    else
      raise
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:animation_id, :place, :arrival_time, :departure_time)
  end
end
