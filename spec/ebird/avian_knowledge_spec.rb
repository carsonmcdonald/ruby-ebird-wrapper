require 'spec_helper'
# Speccing out the Ebird ruby gem

module EBird 
	describe "AvianKnowledge" do
	ak = AvianKnowledge.new()
		it "should provide a parsed list of countries from the Ebird API" do
			expect(ak.country_list.class).to eq(Array)
		end #country_list spec
		it "should provide a parsed list of states" do
			expect(ak.subnational1_list.class).to eq(Array)
		end #subnat_1 spec
	end #describe AvianKnowledge
end #EBird Module
