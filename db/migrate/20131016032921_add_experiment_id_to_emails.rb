class AddExperimentIdToEmails < ActiveRecord::Migration
  def change
    add_column :emails, :experiment_id, :interger
  end
end
