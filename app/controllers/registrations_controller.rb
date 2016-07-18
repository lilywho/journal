class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:email, :username, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:email, :username, :password, :password_confirmation, :current_password)
  end

  protected

  def after_sign_up_path_for(resource)
    '/users/:user_id'
  end

  def after_log_in_path_for(resource)
    '/users/:user_id'
  end
end