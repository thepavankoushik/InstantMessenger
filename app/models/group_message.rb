class GroupMessage < ActiveRecord::Base
	belongs_to :group
	belongs_to :sender, :class_name => 'User'
end