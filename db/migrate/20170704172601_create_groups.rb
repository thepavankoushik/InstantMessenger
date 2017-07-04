class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
    	t.belongs_to :user
    	t.text :members, array: true, default: []
    	t.string :name
    	t.timestamps
    	t.text :message
    end
  end
end
