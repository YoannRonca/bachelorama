class ReviewsController < ApplicationController
  def create
    @animation = Animation.find(params[:animation_id])
    @review = Review.new(review_params)
    @review.animation = @animation
    if @review.save
      redirect_to animation_path(@animation)
    else
      render "animations/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
