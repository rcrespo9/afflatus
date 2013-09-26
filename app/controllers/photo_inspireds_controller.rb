class PhotoInspiredsController < ApplicationController
	

	def new
        @user_id = params[:user_id]
	end

	def create
	    user_id = params[:user_id]

	    user = User.find(user_id)
	    photo_inspired = PhotoInspired.create(params[:photo_inspired])
	    user.photo_inspireds << photo_inspired

	    redirect_to "/users/#{user_id}"
	end

	def show
		@user = User.find(params[:user_id])
		@photo_inspired = PhotoInspired.find(params[:id])
	end

	def edit
		@user = User.find(params[:user_id])
        @photo_inspired = @user.photo_inspireds.find(params[:id])
	end

	def update
		user = User.find(params[:user_id])
  		photo_inspired = PhotoInspired.find(params[:id])
        
        if  photo_inspired.update_attributes(params[:photo_inspired])
        	flash[:notice] = 'Creation was successfully updated.'
            redirect_to user_photo_inspired_path(user, photo_inspired)
        else
        	render :action => "edit"
        end
	end

	def destroy
			photo_inspired = PhotoInspired.find(params[:id])
			photo_inspired.destroy
			flash[:notice] = :success
		    redirect_to dashboard_index_path
	end
end
