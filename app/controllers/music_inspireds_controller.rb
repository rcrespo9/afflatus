class MusicInspiredsController < ApplicationController
	before_filter :authenticate_user!, only: [:new, :create]
	before_filter :verify_user, only: :edit
	require 'soundcloud'

	def new
		client = Soundcloud.new(:client_id => '550f5d8ddb4f4118734eae23a5c974c8')

		track_url = 'https://soundcloud.com/emiclassicsus/sets/greatest-classical-music-ever'
		@embed_info = client.get('/oembed', maxheight: 166, show_comments: false, auto_play: true, start_track: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13].sample, :url => track_url)

		
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
		    redirect_to dashboard_path
	end

	private 
  	#prevents non-owners from editing someone else's creations
    def verify_user
	  	@music_inspired = MusicInspired.find(params[:id])
	  	current_user.id == @music_inspired.user_id ? @music_inspired : redirect_to(root_url)
    end
end
