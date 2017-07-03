class AddTimeStampsToMsgs < ActiveRecord::Migration
  def change
  	add_column :msgs, :created_at, :datetime
  	add_column :msgs, :updated_at, :datatime
  end
end
