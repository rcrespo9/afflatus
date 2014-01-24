class UsersController < ApplicationController
	before_filter :authenticate_user!
	before_filter :verify_user, only: :edit
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		user = User.find(params[:id])
		user.update_attributes(params[:user])
		redirect_to user
	end

	def create
		@user = User.create(params[:user])
	end

    private 
  	#prevents non-owners from editing someone else's profile
    def verify_user
	  	@user = User.find(params[:id])
	  	current_user.id == @user.id ? @user : redirect_to(root_url)
    end
end