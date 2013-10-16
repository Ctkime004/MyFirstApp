class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.integer :sends
      t.integer :delivered
      t.integer :opens
      t.integer :clicks
      t.integer :conversions
      t.decimal :delivery_percentage
      t.decimal :open_percentage
      t.decimal :click_percentage
      t.decimal :open_to_click_percentage
      t.decimal :conversion_percentage

      t.timestamps
    end
  end
end
