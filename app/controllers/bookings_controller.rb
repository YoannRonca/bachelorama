class BookingsController < ApplicationController
  def new
    @animation = Animation.find(params[:animation_id])
    @booking = Booking.new
  end

  def create
    @animation = Animation.find(params[:animation_id])
    @booking = Booking.new(booking_params)
    @booking.animation = @animation
    if @booking.save
      redirect_to animation_path(@animation)
    else
      render "animations/show"
    end
  end

  private

  def booking_params
    params.require(:animation).permit(:animation_id, :user_id, :place)
  end
end
