class MusicInspiredsController < ApplicationController
	require 'soundcloud'

	def new
		client = Soundcloud.new(:client_id => '550f5d8ddb4f4118734eae23a5c974c8')

		track_url = 'https://soundcloud.com/barbicancentre/sets/barbican-classical-music'
		@embed_info = client.get('/oembed', :url => track_url)

		
        @user_id = params[:user_id]
	end

	def create
	    user_id = params[:user_id]

	    user = User.find(user_id)
	    music_inspired = MusicInspired.create(params[:music_inspired])
	    user.music_inspireds << music_inspired

	    redirect_to "/users/#{user_id}"
	end

	def show
		@user = User.find(params[:user_id])
		@music_inspired = MusicInspired.find(params[:id])
	end

	def edit
		@user = User.find(params[:user_id])
        @music_inspired = @user.music_inspireds.find(params[:id])
	end

	def update
		user = User.find(params[:user_id])
  		music_inspired = MusicInspired.find(params[:id])
        
        if  music_inspired.update_attributes(params[:music_inspired])
        	flash[:notice] = 'Creation was successfully updated.'
            redirect_to user_music_inspired_path(user, music_inspired)
        else
        	render :action => "edit"
        end
	end

	def destroy
			music_inspired = MusicInspired.find(params[:id])
			music_inspired.destroy
			flash[:notice] = :success
		    redirect_to dashboard_index_path
	end
end
