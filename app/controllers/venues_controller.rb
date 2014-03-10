class VenuesController < ApplicationController

	before_filter :authenticate_user!

	def index
		@venues = current_user.venues.order(:name)
	end

	def new
		@venue = current_user.venues.new
	end

	def create
		@venue = current_user.venues.new(venue_params)
		if @venue.save
			flash[:success] = "Venue created successfully."
			redirect_to venues_path
		else
			render :new
		end
	end

	def show
		@venue = current_user.venues.find(params[:id])
	end

	def edit
		@venue = current_user.venues.find(params[:id])
	end

	def update
		@venue = current_user.venues.find(params[:id])
		if @venue.update_attributes(venue_params)
			flash[:success] = "Venue updated successfully."
			redirect_to venues_path
		else
			render :edit
		end
	end

	def destroy
		@venue = current_user.venues.find(params[:id])
		if @venue.destroy
			flash[:success] = "This venue has passed away."
			redirect_to venues_url
		else
			flash[:error] = "Venue could not be deleted."
			redirect_to venues_url
		end
	end

	private

	def venue_params
		params.require(:venue).permit(:name, :address, :city, :state, :box_office_phone, :box_office_email, :contact_phone, :contact_email)
	end

end
