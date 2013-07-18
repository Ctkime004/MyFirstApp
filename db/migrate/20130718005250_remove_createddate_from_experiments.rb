class RemoveCreateddateFromExperiments < ActiveRecord::Migration
  def up
    remove_column :experiments, :createddate
  end

  def down
    add_column :experiments, :createddate, :datetime
  end
end
