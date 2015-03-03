class UserPlace < ActiveRecord::Base
	validates :user_id, :place_id, presence: true
	belongs_to :place
	belongs_to :user
end
