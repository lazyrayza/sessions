class UsersController < ApplicationController
  before_action :find_user, only: [:show, :update, :destroy, :edit]

  def index
    if params[:query].present?
      @therapists = User.search_by_expertise_and_full_name(params[:query])
      respond_to do |format|
        format.html { render users_path }
        format.js
      end
      # @therapists = User.search_by_expertise_and_full_name(params[:query]).where.not(latitude: nil, longitude: nil).where(therapist: true)
    else
      @therapists = User.where(therapist: true)
    end
  end

  def show
    @markers =
      {
        lng: @user.longitude,
        lat: @user.latitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { therapist: @user }),
        image_url: helpers.asset_url('therapist.png')
      }
      # @reviews = Review.bookings.where(therapist_id: @user.id)
  end

  def new
    @user = User.new
  end

  def update
    if @user.update(users_params)
      redirect_to profile_path, notice: 'User was updated!'
    else
      render :new
    end
  end

  def create
    @user = User.new(users_params)
    if @user.save
      redirect_to "/", notice: 'User has been updated!'
    else
      render :new
    end
  end

  def edit
  end

  def destroy
    @user.destroy
    redirect_to new_user_session_path
  end

  private

  def users_params
    params.require(:user).permit(:first_name, :last_name, :therapist)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
