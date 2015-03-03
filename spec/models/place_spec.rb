require 'rails_helper'

RSpec.describe Place, type: :model do

	let(:place) { Place.new(name: "Burger Spot", location: "Denver") }

	it "is invalid without a name" do
		place = Place.new(name: nil, location: "Denver")
		expect(place).not_to be_valid
	end

	it "is invalid without a location" do
		place = Place.new(name: "Burger Spot", location: nil)
		expect(place).not_to be_valid
	end

	it "has an association with users" do
		expect(place).to respond_to(:users)
	end

	it "has an association with user places" do
		expect(place).to respond_to(:user_places)
	end
end
