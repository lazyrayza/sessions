class UsersController < ApplicationController
  before_action :find_user, only: [:show, :update, :destroy, :edit]

  def index
    @therapists = User.where(therapist: true)
    # @therapist = @therapist.select { |therapist| therapist.latitude != nil && therapist.longitude != nil }
    # @markers = @therapist.map do |therapist|
    #   {
    #     lng: therapist.longitude,
    #     lat: therapist.latitude,
    #     infoWindow: render_to_string(partial: "infowindow", locals: { therapist: therapist }),
    #     image_url: helpers.asset_url('therapist.png')
    #   }
    # end
  end

  def show
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
