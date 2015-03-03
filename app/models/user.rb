class User < ActiveRecord::Base

	validates :first_name, :last_name, presence: true
	has_many :places, through: :user_places
	has_many :user_places


end

