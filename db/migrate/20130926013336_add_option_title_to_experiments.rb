class AddOptionTitleToExperiments < ActiveRecord::Migration
  def change
    add_column :experiments, :option_title, :string
  end
end
