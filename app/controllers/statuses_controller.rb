class StatusesController < ApplicationController
	def create
		@user = User.find(params[:id])
		@status = @user.statuses.create(params[:status])
		redirect_to user_path(@user)

	end
end
