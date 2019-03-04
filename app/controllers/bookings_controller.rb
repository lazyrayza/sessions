class BookingsController < ApplicationController
  before_action :find_booking, only: [:show, :update, :destroy, :edit]

  def index
    #need authorization for specific user to view his bookings
    # @user = User.find(params[:user_id])
    @bookings = current_user.therapist ? current_user.therapist_bookings : current_user.client_bookings
  end

  def show
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
    @booking = Booking.new(bookings_params)
    @booking.client = current_user
    @therapist = User.find(params[:user_id])
    @booking.therapist = @therapist
    if @booking.save
      #respond_to do |format|
        #format.html { redirect_to booking_path(@booking) }
        #format.js
      #end
      redirect_to booking_path(@booking), notice: 'Booking has been made!'
    else
      render :new
      #respond_to do |format|
        #format.html {render 'bookings/show'}
        #format.js
      #end
    end
  end

  def edit
    # @booking = current_user.client_bookings
    # @therapist = @booking.therapist
  end

  def destroy
    @booking.destroy
    redirect_to root_path
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_time, :end_time, :description, :status)
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
