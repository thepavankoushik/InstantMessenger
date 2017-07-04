class UsersController < ApplicationController
	require 'will_paginate/array'
	def index
		@users = User.paginate(page: params[:page],per_page: 5)
	end
	def show

		@user = User.find(params[:id])
		if current_user != @user

		#@mess = Msg.find_by_sender_id(@user.id)
			@mess = current_user.msgs
			@mess = @mess + @user.msgs
			@mess = @mess.sort_by {|m| m.created_at }
			@message = Msg.new
		else
			redirect_to root_path
		end


	end
	def chats
		@temp = current_user.senders.uniq
		@senders = @temp.paginate(page: params[:page],per_page: 5)
	end

	



end