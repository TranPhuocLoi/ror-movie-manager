module Wallets
  class ProfileController < WalletsController
    def index
      
    end

    def update
      
    end

    # def update_profile
    #   @user = current_web_user
    #   if @user.update user_profile_params
    #     redirect_to wallets_profile_path, flash: {success: 'Profile updated'}
    #   else
    #     redirect_to wallets_profile_path, flash: {error: "Something went wrong. Please once again."}
    #   end
    # end

    # def setting
    # end

    # protected
    #   def user_profile_params
    #     params.require(:user).permit(:photo, :username, :firstname, :lastname, :phone_number)
    #   end
  end
end
