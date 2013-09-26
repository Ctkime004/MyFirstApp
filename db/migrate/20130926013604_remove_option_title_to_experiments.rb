class RemoveOptionTitleToExperiments < ActiveRecord::Migration
  def up
    remove_column :experiments, :option_title
  end

  def down
    add_column :experiments, :option_title, :string
  end
end
