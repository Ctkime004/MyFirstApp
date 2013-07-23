class CreatePpcAdCopies < ActiveRecord::Migration
  def change
    create_table :ppc_ad_copies do |t|
      t.integer :Impressions
      t.integer :Clicks
      t.integer :Conversions
      t.decimal :CPC

      t.timestamps
    end
  end
end
