class ReportsController < ApplicationController
	layout 'report.html.erb'
	before_filter :login_check

	def index
		@reports = Report.all
	end

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
		if params[:id].present?
			@data = JSON.parse(Base64.decode64(Report.find(params[:id]).report_code))
		else
			@data = decode_data
			save_report
		end
		render 'show'
	end

	def destroy
		@report = Report.find(params[:id])
		@report.destroy
		redirect_to reports_url
	end

	private

	def decode_data
		JSON.parse(Base64.decode64(show_params))
	end

	def save_report
		report = Report.new
		report.report_code = params[:data]
		report.quote_no = decode_data["quotation"]
		report.project_site = decode_data["site"]
		report.save
	end

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
