class UsersController < ApplicationController
	def index
		@users = User.all
	end
	def show
		@user = User.find(params[:id])

		#@mess = Msg.find_by_sender_id(@user.id)
		@mess = current_user.msgs
		@message = Msg.new

	end
	



end