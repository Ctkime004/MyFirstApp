class AddExperimentIdToPpcadcopy < ActiveRecord::Migration
  def change
  	add_column :ppc_ad_copies, :experiment_id, :interger
  	add_index :ppc_ad_copies, :experiment_id
  end
end
