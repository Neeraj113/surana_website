class ReportsController < ApplicationController
	layout 'report.html.erb'
	before_filter :login_check

	# When editing the form do keep in mind to set the default value
	def new
		if params[:data].present?
			@data = JSON.parse(Base64.decode64(params[:data]))
		end
		render 'new'
	end

	def create
		redirect_to action: show, params: params
	end

	def show
		@data = JSON.parse(Base64.decode64(show_params))
		render 'show'
	end

	private
	def show_params
		params.require(:data)
	end

	def login_check
		unless logged_in?
			flash[:alert] = "Please login to authenticate yourself."
			flash[:color]= "valid"
			redirect_to login_path_url
		end
	end
end
