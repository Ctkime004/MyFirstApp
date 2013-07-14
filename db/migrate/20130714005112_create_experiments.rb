class CreateExperiments < ActiveRecord::Migration
  def change
    create_table :experiments do |t|
      t.string :userid
      t.text :title
      t.date :startdate
      t.date :stopdate
      t.string :experimenttype
      t.text :details
      t.datetime :createddate

      t.timestamps
    end
  end
end
