class TrProfilesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @tr_profiles = Tr_profile.all
  end

  def show
    @tr_profiles = Tr_profile.find(params[:id])
  end

end
