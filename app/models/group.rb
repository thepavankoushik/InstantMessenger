class Group < ActiveRecord::Base
	validates :name, presence: true
	validates :members, length: {minimum: 8 , maximum: 15}

	belongs_to :user
	has_many :group_messages
	
end