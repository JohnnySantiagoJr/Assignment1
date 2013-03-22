class StatusesController < ApplicationController
	def create
		@user = User.find(params[:User_id])
		@status = @user.statuses.create(params[:status])
		redirect_to user_path(@user)
	end
end
