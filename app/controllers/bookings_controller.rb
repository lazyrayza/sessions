class BookingsController < ApplicationController
  before_action :find_booking, only: [:show, :update, :destroy, :edit]

  def index
    #need authorization for specific user to view his bookings
    # @user = User.find(params[:user_id])
    @bookings = current_user.therapist ? current_user.therapist_bookings : current_user.client_bookings
  end

  def show
    @booking = current_user.client_bookings.where(state: 'Paid').find(params[:id])
  end

  def new
    @booking = Booking.new
    @therapist = User.find(params[:user_id])
  end

  def update
    if @booking.update(bookings_params)
      redirect_to booking_path(@booking), notice: 'Booking was updated!'
    else
      render :new
    end
  end

  def create
    @therapist = User.find(params[:user_id])
    @booking = Booking.new(bookings_params)

    @booking.therapist_id = @therapist.id
    @booking.amount = @therapist.price
    @booking.state = "Pending"
    @booking.client = current_user

    if @booking.save
      redirect_to new_booking_payment_path(@booking)
    else
      render :new
    end
  end


  def edit
    # @booking = current_user.client_bookings
    # @therapist = @booking.therapist
  end

  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to 'bookings/index' }
      # redirect to same page for AJAX to work
      format.js
    end
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_time, :end_time, :description)
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
