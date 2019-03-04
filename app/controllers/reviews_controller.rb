class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
    @therapist = User.find(params[:user_id])
  end

  def create
    @review = Review.new(review_params)
    @review.client = current_user
    @review.therapist = User.find(params[:user_id])
    @therapist = User.find(params[:user_id])
    if @review.save
      redirect_to user_path(@review), notice: "Thank you for your feedback!"
    else
      render :new
    end
  end

private

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end
