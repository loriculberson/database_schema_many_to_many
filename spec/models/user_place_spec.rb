require 'rails_helper'

RSpec.describe UserPlace, type: :model do


	let(:user) { User.create(first_name: "Molly", last_name: "Jones") }
	let(:place) { Place.create(name: "Burger Spot", location: "Denver") }
	let(:user_place) { UserPlace.create(user_id: user.id, place_id: place.id) }

	it "is invalid without a user_id" do
		user_place = UserPlace.create(user_id: nil, place_id: 1)
		expect(user_place).not_to be_valid
	end

	it "is invalid without a place_id" do
		user_place = UserPlace.create(user_id: 3, place_id: nil)
		expect(user_place).not_to be_valid
	end

	it 'has favorite places' do
		expect(user_place).to respond_to(:place)
	end

	it 'has users' do
		expect(user_place).to respond_to(:user)
	end
end
