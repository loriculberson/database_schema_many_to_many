require 'rails_helper'

RSpec.describe User, type: :model do

	let(:user) { User.new(first_name: "Molly", last_name: "Jones") }
	
	it 'is invalid without a first name' do
		user = User.new(first_name: nil, last_name: "Jones")
		expect(user).not_to be_valid
	end

	it 'is invalid without a last name' do
		user = User.new(first_name: "Petula", last_name: nil)
		expect(user).not_to be_valid
	end

	it 'has favorite places' do
		expect(user).to respond_to(:places)
	end

	it "has an association with user places" do
		expect(user).to respond_to(:user_places)
	end


end
