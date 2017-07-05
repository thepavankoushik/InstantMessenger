class GroupMessage < ActiveRecord::Base
	validates :message,presence: true
	belongs_to :group
	belongs_to :sender, :class_name => 'User'
end