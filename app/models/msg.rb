class Msg < ActiveRecord::Base
	validates :message,presence: true
	belongs_to :user
	belongs_to :sender, :class_name => 'User'
end