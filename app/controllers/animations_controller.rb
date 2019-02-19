class AnimationsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @animations = policy_scope(Animation)
  end

  def show
    @review = Review.new
  end

  def new
    @animation = current_user.animations.new
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
    params.require(:animation).permit(:title, :category, :price)
  end

  def set_restaurant
    @animation = Animation.find(params[:id])
    authorize @animation
  end
end
