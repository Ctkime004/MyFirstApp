class AddMathCalculationsToAdCopies < ActiveRecord::Migration
  def change
  	add_column :ppc_ad_copies, :click_percentage, :decimal
  	add_column :ppc_ad_copies, :conversion_percentage, :decimal
  	add_column :ppc_ad_copies, :total_cost, :decimal
  	add_column :ppc_ad_copies, :cost_per_conversion, :decimal
  end
end
