class AuthenticationsController < ApplicationController
	#only call into
	before_action :authenticate_user, only: [:destroy]


	def new
		# are they already loggeed in?
		if current_user #they are!  can't create them again
			redirect_to root_url
		else
			@user = User.new

			render :new
		end
	end	


	def create
			user = User.find_by(email: params[:user][:email])
		# if user
		if user != nil
			#authenticate user
			if user.authenticate(params[:user][:password])
				session[:user_id] = user.id
				redirect_to root_url
			end
		else
			# flash.now.alert = "Unable to sign you in."
			# render :new
			redirect_to authentications_new_url 
		end
		# end
	end

	def destroy
		session[:user_id] = nil
		redirect_to authentications_new_url notice: "You signed out"
		# redirect_to authentications_url, notice: "You signed out"
		# redirect_to root_url, notice: "You signed out"
	end

end