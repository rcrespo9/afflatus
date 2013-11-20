require 'spec_helper'

describe PhotoInspired do 
	before :each do 
		@photo_inspired = PhotoInspired.create(creation_title:"Rose")
	end

	describe "#photo_inspired" do 
		it "should return a work inspired by photography" do 
			@photo_inspired.creation_title.should eq("Rose")
		end
	end
end
