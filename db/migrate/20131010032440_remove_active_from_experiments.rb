class RemoveActiveFromExperiments < ActiveRecord::Migration
  def up
    remove_column :experiments, :active
  end

  def down
    add_column :experiments, :active, :boolean
  end
end
