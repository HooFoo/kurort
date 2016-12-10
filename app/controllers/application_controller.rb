class ApplicationController < ActionController::Base
  before_filter :set_user
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :force_json

  layout proc {
    if request.xhr?
      false
    else
      'application' # or other layout from views/layouts/
    end
  }


  protected

  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

  private

  def force_json
    # if params[_json] it means request was parsed as json
    # if body.read.blank? there was no body (GET/DELETE) so content-type was meaningless anyway
    head :not_acceptable unless params['_json'] || request.body.read.blank?
  end

  def set_user
    @user = current_user || User.new
  end
end
