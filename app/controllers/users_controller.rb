class UsersController < ApplicationController

	

	def new
		@user = User.new
	end

	def create
		@user = User.create(params[:user].permit(:email, :password, :password_confirmation))
		redirect_to action: "new"
	end

end
