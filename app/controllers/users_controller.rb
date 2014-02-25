class UsersController < ApplicationController
	def show
		redirect_to sign_in_path unless current_user
    @user = User.find(params[:id])
    # @shows = current_user.shows
    binding.pry
  end
end
