class AddOptionTitleToPpcAdCopies < ActiveRecord::Migration
  def change
    add_column :ppc_ad_copies, :option_title, :string
  end
end
