class CreateMsgs < ActiveRecord::Migration
  def change
    create_table :msgs do |t|
    	t.belongs_to :user
    	t.belongs_to :sender, class: 'User'
    	t.string :message
    end
  end
end
