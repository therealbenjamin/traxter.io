class ShowsController < ApplicationController

	def create
		@show = current_user.shows.build(show_params)
    if @trip.save
      flash[:success] = "Show created successfully."
      redirect_to root_path
    else
      render "static_pages/home"
    end
	end

	def show
		@show = Show.find(params[:id])
	end

	private

	def show_params
		params.require(:show).permit(:name, :description)
	end

end
