class ReportsController < ApplicationController
	layout 'report.html.erb'

	def new
		if logged_in?
			if params[:data].present?
				@data = JSON.parse(Base64.decode64(params[:data]))
			else
				@data = {
					'terms' => {}
				}
			end
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
		@data = JSON.parse(Base64.decode64(show_params))
		render 'show'
	end

	private
	def show_params
		params.require(:data)
	end
end
