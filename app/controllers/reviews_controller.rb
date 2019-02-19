class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @animation = Animation.find(params[:animation_id])
  end

  def create
    @animation = Animation.find(params[:animation_id])
    @review = Review.new(review_params)
    @review.animation = @animation
    @review.user = current_user
    if @review.save
      redirect_to animation_path(@animation)
    else
      raise
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
