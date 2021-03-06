class AnimationsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  before_action :set_animation, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      sql_query = " \
        animations.title ILIKE :query \
        OR animations.description ILIKE :query \
      "
      @animations = policy_scope(Animation).where(sql_query, query: "%#{params[:query]}%")
    else
      @animations = policy_scope(Animation)
    end
  end

  def show
    @booking = Booking.new
    @review = Review.new

    @markers =
      {
        lng: @animation.longitude,
        lat: @animation.latitude
      }
  end

  def new
    @animation = Animation.new
    authorize @animation
  end

  def create
    @animation = current_user.animations.new(animation_params)
    authorize @animation
    if @animation.save
      redirect_to animation_path(@animation)
    else
      render :new
    end
  end

  def edit
    @animation = Animation.find(params[:id])
  end

  def update
    animation = Animation.find(params[:id])
    animation.update(animation_params)
    redirect_to animation_path(animation)
  end

  def destroy
    animation = Animation.find(params[:id])
    animation.destroy
    redirect_to animations_path
  end

  private

  def animation_params
    params.require(:animation).permit(:title, :category, :price, :photo, :address, :description)
  end

  def set_animation
    @animation = Animation.find(params[:id])
    authorize @animation
  end
end
