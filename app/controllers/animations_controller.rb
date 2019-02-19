class AnimationsController < ApplicationController
  before_action :authenticate_user!, only: :show

  def index
    @animations = Animation.all
  end

  def show
    @animation = Animation.find(params[:id])
  end

  def new
    @animation = Animation.new
  end

  def create
    @animation = Animation.new(animation_params)
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
end
