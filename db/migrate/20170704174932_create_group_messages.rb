class CreateGroupMessages < ActiveRecord::Migration
  def change
    create_table :group_messages do |t|
    	t.belongs_to :group
    	t.text :message
    	t.timestamps
    	t.belongs_to :sender, class: 'User'
    end
  end
end
