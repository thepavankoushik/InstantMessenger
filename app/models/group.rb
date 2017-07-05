class Group < ActiveRecord::Base
	validates :name, presence: true
	validates :members, length: {minimum: 1 , maximum: 5}
	validates :user, presence: true
	belongs_to :user
	has_many :group_messages
	
end