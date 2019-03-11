class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def profile
    @user = current_user
    @booking = Booking.where(client_id: current_user.id)
  end

  def home
  end
end
