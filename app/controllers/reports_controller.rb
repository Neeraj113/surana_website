class ReportsController < ApplicationController
	layout 'report.html.erb'

	def new
		if logged_in?
			render 'new'
		else
			flash[:alert] = "Please login to authenticate yourself."
			flash[:color]= "valid"
			redirect_to login_path_url
		end
	end

	def create
		redirect_to action: show, params: params
	end

	def show
		render 'show'
	end
end
