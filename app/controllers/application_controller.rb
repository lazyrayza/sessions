class ApplicationController < ActionController::Base
  protect_from_forgery unless: -> { request.format.json? }
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :therapist])

    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :photo, :address, :phone_number, :languages, :expertise])
  end
end
