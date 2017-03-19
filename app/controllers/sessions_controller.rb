class SessionsController < ApplicationController
	include SessionsHelper

	def new
	end
	
	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if (user && user.authenticate(params[:session][:password]))
			if user.has_permit
				log_in user
				set_current_user
				redirect_to user
			else
				flash[:alert] = "Access is not yet granted. Please contact Web Admin."
				flash[:color]= "invalid"
				render 'new'
			end
		else
			flash[:alert] = "Invalid email/password combination"
			flash[:color]= "invalid"
			render 'new'
		end
	end

	def destroy
		sign_out
		flash[:alert] = "You have successfully signed out."
		flash[:color]= "valid"
		redirect_to login_path_url
	end

end
