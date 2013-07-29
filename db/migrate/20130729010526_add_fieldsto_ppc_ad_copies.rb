class AddFieldstoPpcAdCopies < ActiveRecord::Migration
  def change
  	add_column :ppc_ad_copies, :title, :string
  	add_column :ppc_ad_copies, :line_1, :string
  	add_column :ppc_ad_copies, :line_2, :string
  	add_column :ppc_ad_copies, :display_url, :string
  	add_column :ppc_ad_copies, :landing_page_url, :string
  end
end
