class RegistrationsController < Devise::RegistrationsController

  def after_update_path_for(*)
    flash[:notice] = "Account succesfully updated"
    profile_path
  end
end
