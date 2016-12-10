class Auth::SessionsController < Devise::SessionsController
  layout proc {
    if request.xhr?
      false
    else
      "application"
    end
  }

  after_action :set_csrf_headers, only: [:create, :destroy]

  def create
    self.resource = warden.authenticate(auth_options)

    if self.resource
      sign_in(resource_name, self.resource)
      render json: current_user.to_json
    else
      render json: {msg: I18n.t('devise.failure.not_found_in_database', authentication_keys: 'email')}, status: 401
    end
  end

  def destroy
    Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name)
    render json: {msg: "Successfully Signed out"}
  end

  protected
  def set_csrf_headers
    cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?
  end

end