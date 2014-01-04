class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_email(params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			sign_in user
			redirect_back_or user # Method found in session_helper
		else
			# Create an error message and reload signin page
			flash.now[:error] = 'Invalid email/password combination' # Almost there
			render 'new'
		end
	end

	def destroy
		sign_out
		redirect_to root_url
	end
end
