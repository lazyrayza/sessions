class RegistrationsController < Devise::RegistrationsController
  def after_update_path_for(*)
    flash[:notice] = "Account succesfully updated"
    profile_path
  end

  def update
    super
    languages = params[:user][:user_language_ids].map { |id| Language.find(id) }
    resource.languages = languages
  end
end
