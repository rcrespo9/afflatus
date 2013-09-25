class MusicInspiredsController < ApplicationController
	
	def new
		@music_inspired = current_user.music_inspireds.new
	end

	def create
		music_inspired = current_user.music_inspireds.new(params[:music_inspired])
  		music_inspired.save
  		# redirect_to
	end

	def show
		@music_inspired = MusicInspired.find(params[:id])
	end

	def edit
		@music_inspired = MusicInspired.find(params[:id])
	end

	def update
		music_inspired = MusicInspired.find(params[:id])
  	    music_inspired.update_attributes(params[:music_inspired])
  		# redirect_to
	end

	def destroy
		begin
			music_inspired = MusicInspired.find(params[:id])
			music_inspired.destroy
		rescue
		end
		# redirect_to
	end
end