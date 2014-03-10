class ShowsController < ApplicationController

	def create
		@show = current_user.shows.new(show_params)
    if @show.save
      flash[:success] = "Show created successfully."
      redirect_to user_path(current_user)
    else
      render :new
    end
	end

	def show
		@show = current_user.shows.find(params[:id])
	end

	private

	def show_params
		params.require(:show).permit(:name, :description)
	end

end
