class TagsController < ApplicationController
	def create
		@status = Status.find(params[:status_id])
		@tag = @status.tags.create(params[:tag])
		redirect_to status_path(@status)
	end
end
