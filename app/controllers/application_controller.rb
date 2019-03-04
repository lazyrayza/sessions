class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  config.action_view.embed_authenticity_token_in_remote_forms = true
end
