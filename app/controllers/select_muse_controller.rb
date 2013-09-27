class SelectMuseController < ApplicationController
	def home
		@user_id = params[:user_id]
	end
end
