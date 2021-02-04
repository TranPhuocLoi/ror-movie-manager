# frozen_string_literal: true

class Users::PasswordsController < Devise::PasswordsController
  # GET /resource/password/new
  # def new
  #   super
  # end

  # POST /resource/password
  def create
    # user = User.find_by(email: resource_params[:email])
    # if user.present?
    #   token, hashed = Devise.token_generator.generate(User, :reset_password_token)
    #   user.reset_password_token = hashed
    #   user.reset_password_sent_at = Time.now
    #   if user.save
    #     host = request.base_url
    #     SendgridEmail.new().forgot_password(user.email, token, host)
    #     redirect_to new_web_user_session_path, flash: { success: I18n.t('devise.passwords.send_instructions') }
    #   else
    #     redirect_to new_web_user_password_path, flash: { error: 'Email invalid' }
    #   end
    # else
    #   redirect_to new_web_user_password_path, flash: { error: 'Email invalid' }
    # end
  end

  # GET /resource/password/edit?reset_password_token=abcdef
  # def edit
  #   super
  # end

  # PUT /resource/password
  def update
    # self.resource = resource_class.reset_password_by_token(resource_params)
    # yield resource if block_given?

    # if resource.errors.empty?
    #   resource.unlock_access! if unlockable?(resource)
    #   set_flash_message!(:notice, :updated_not_active)
    #   respond_with resource, location: new_session_path(resource_name)
    # else
    #   respond_with resource
    # end
  end

  # protected

  # def after_resetting_password_path_for(resource)
  #   super(resource)
  # end

  # The path used after sending reset password instructions
  # def after_sending_reset_password_instructions_path_for(resource_name)
  #   super(resource_name)
  # end
end
