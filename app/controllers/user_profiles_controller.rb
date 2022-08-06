class UserProfilesController < ApplicationController
    before_action :authenticate_user!
    #before_action :set_user

    def profile
    end

    # private
    # def set_user 
    #     @user = User.find(params[:id])
    # end
end
