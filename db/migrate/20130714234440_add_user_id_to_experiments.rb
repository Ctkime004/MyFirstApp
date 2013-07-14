class AddUserIdToExperiments < ActiveRecord::Migration
  def change
  	add_column :experiments, :user_id, :interger
  	add_index :experiments, :user_id
  	remove_column :experiments, :userid
  end
end
