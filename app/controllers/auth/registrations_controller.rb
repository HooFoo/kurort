class Auth::RegistrationsController < Devise::RegistrationsController
  layout proc {
    if request.xhr?
      false
    else
      "application"
    end
  }

  def create
    build_resource(sign_up_params)

    if resource.save
      if resource.active_for_authentication?
        sign_up(resource_name, resource)

        render json: {
            msg: "Welcome! You have signed up successfully.",
        }
      else
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      render json: {
          msg: resource.errors.full_messages.first,
          errors: resource.errors,
          form_name: "sign_up_form"
      }, status: 403
    end
  end

  def destroy
    Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name)
    resource.soft_delete!
    render json: {msg: "Successfully deleted"}
  end

  protected
  def after_update_path_for(resource)
    edit_user_registration_path
  end

end
