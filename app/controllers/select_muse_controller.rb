class SelectMuseController < ApplicationController
	def index
		@user_id = params[:user_id]
	end
end
