require 'spec_helper'
#Speccing out the EBird::EBird library.

module EBird 
	describe "Recent Observations from an Area" do
		eb = EBird.new()
		it "should get an array of observations" do
			expect(eb.recent_observations_geo.class).to eq(Array)
		end
	end
end
