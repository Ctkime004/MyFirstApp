class AddActiveToExperiments < ActiveRecord::Migration
  def change
    add_column :experiments, :active, :boolean
  end
end
