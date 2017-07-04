class GroupMessagesController < ApplicationController
	def create
		@new_message = GroupMessage.new(grpmsg_params)
		@new_message.sender = current_user

		if @new_message.save
			redirect_to root_path
		end
	end
	private
	def grpmsg_params
		params.require(:group_message).permit(:message,:group_id)
	end
end
