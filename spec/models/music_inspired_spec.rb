require 'spec_helper'

describe MusicInspired do 
	before :each do 
		@music_inspired = MusicInspired.create(creation_title:"Daffodil")
	end

	describe "#music_inspired" do 
		it "should return a work inspired by music" do 
			@music_inspired.creation_title.should eq("Daffodil")
		end
	end
end
