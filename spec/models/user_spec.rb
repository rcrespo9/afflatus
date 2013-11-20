require 'spec_helper'

describe User do 
	before :each do 
		@photo_inspired = PhotoInspired.create(creation_title:"Rose")
		@music_inspired = MusicInspired.create(creation_title:"Leaves")
		@user = User.create(email: "testemail@email.com", password: "password123")
		@user.photo_inspireds << @photo_inspired
		@user.music_inspireds << @music_inspired
	end

	describe "#email" do 
		it "should return the correct user email" do 
			@user.email.should eq("testemail@email.com")
		end
	end

	describe "#password" do 
		it "should return the correct user password" do 
			@user.password.should eq("password123")
		end
	end

	describe "#user_photo_inspireds" do 
		it "should return the works inspired by photography" do 
			@user.photo_inspireds[0].creation_title.should eq("Rose")
		end
	end

	describe "#user_music_inspireds" do 
		it "should return the works inspired by music" do 
			@user.music_inspireds[0].creation_title.should eq("Leaves")
		end
	end
end
