class MsgsController < ApplicationController
	def create
		@message = Msg.new(msg_params)
		@message.sender_id = current_user.id
		if @message.save
			redirect_to root_path
		end
	end

	def destroy

	end
	private
	def msg_params
		params.require(:msg).permit(:user_id, :message)
	end

end
