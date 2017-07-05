class GroupsController < ApplicationController
	def index
		@groups = Group.all
		@groups = Group.paginate(page: params[:page],per_page: 5)

	end

	def new
		@group = Group.new
		@users = User.all
		@usrs = Array.new
		@users.each do |usr|
			if usr != current_user
				@usrs.push(usr)
			end
		end
	end

	def create
		@group = Group.new(group_params)
		@group.user = current_user
		
		if @group.save
			redirect_to group_path(@group)
		else
			
			redirect_to new_group_path
		end
	end

	def show

		@group = Group.find_by_id(params[:id])
		
		@messages = @group.group_messages


		@new_message = GroupMessage.new

	end
	private
	def group_params
		params.require(:group).permit(:name, :members=> [])
	end

end