class Place < ActiveRecord::Base
	has_many :user_places
	has_many :users, through: :user_places
	validates :name, :location, presence: true
end
