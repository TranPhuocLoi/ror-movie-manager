module Wallets
  class PasswordController < WalletsController
    def index
      
    end

    # def update_password
    #   @user = current_web_user
    #   if @user.valid? && current_web_user.valid_password?(params[:user][:current_password])
    #     if @user.update(user_params.except(:current_password))
    #       sign_out(@user)
    #       sign_in(@user, :bypass => true)
    #       redirect_to wallets_password_path, flash: {success: 'Password updated'}
    #     else
    #       redirect_to wallets_password_path, flash: {error: "Something went wrong. Please once again."}
    #     end
    #   else
    #     redirect_to wallets_password_path, flash: {error: "Something went wrong. Please once again."}
    #   end
    # end

    # protected
    #   def user_params
    #     params.require(:user).permit(:current_password, :password, :password_confirmation)
    #   end
  end
end
