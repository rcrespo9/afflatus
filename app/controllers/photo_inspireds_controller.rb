class PhotoInspiredsController < ApplicationController
	
	def new
	   @user = User.find(params[:user_id])
       @photo_inspired = @user.photo_inspireds.build 
	end

	def create
		@user = User.find(params[:photo_inspired][:user_id])
        @photo_inspired = @user.photo_inspireds.build(params[:photo_inspired])
  		 # user = User.find(params[:user_id])
     #     photo_inspired = user.photo_inspireds.create(params[:photo_inspired])
     #     photo_inspired.save
  		 redirect_to :root
	end

	def show
		@photo_inspired = user.photo_inspireds.find(photo_inspired_id)
	end

	def edit
		@photo_inspired = PhotoInspired.find(params[:id])
	end

	def update
		photo_inspired = PhotoInspired.find(params[:id])
  	    photo_inspired.update_attributes(params[:photo_inspired])
  		# redirect_to
	end

	def destroy
		begin
			photo_inspired = PhotoInspired.find(params[:id])
			photo_inspired.destroy
		rescue
		end
		# redirect_to
	end
end
