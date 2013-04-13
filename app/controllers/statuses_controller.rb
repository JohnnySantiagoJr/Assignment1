class StatusesController < ApplicationController
	def create
		@user = User.find(params[:user_id])
		@status = @user.statuses.create(params[:status])
		redirect_to user_path(@user)
	end

	def destroy
		@user = User.find(params[:user_id])
		@status = @user.statuses.find(params[:id])
		@status.destroy
		redirect_to user_path(@user)
	end
end

