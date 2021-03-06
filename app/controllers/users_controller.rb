class UsersController < ApplicationController
	require 'digest/sha1'
	before_filter :set_current_user, :only => [:index, :create, :show]

	def index
		if session[:user_id].present?
			@users = User.all
		else
			redirect_to login_path_url
		end
	end
	
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:alert] = "You signed up successfully. Please give us sometime and our team shall grant the access to you."
			flash[:color]= "valid"
		else
			flash[:alert] = "Form is invalid"
			flash[:color]= "invalid"
		end
		render "new"
	end

	def show
		if session[:user_id].present?
			@user = User.find(params[:id])
		else
			redirect_to login_path_url
		end
	end

	private

	def user_params
		params.require(:user).permit(:username, :email, :password, :salt, :encrypted_password, :password_confirmation)
	end

	def set_current_user
		current_user
	end
end
