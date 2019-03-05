class ReviewsController < ApplicationController

  def index
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)

    if @review.save
      redirect_to @review
    else
      render :new
    end
  end

  def show
  end

  private


  def review_params
    params.require(:review).permit(:title, :content)
  end
end
