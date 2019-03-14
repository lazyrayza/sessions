class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
  end

  def create
    @review = Review.new(review_params)
    @review.booking = Booking.find(params[:booking_id])
    @review.client_id = current_user.id
    @review.therapist_id = @review.booking.therapist_id
    @review
    if @review.save!
      redirect_to booking_path(@review.booking), notice: "Thank you for your feedback!"
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating, :therapist)
  end
end
