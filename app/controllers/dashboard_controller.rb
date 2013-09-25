class DashboardController < ApplicationController
	before_filter :authenticate_user!
	def index
		@music_inspireds = MusicInspired.all
		@photo_inspireds = PhotoInspired.all
	end
end
