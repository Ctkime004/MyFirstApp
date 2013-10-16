class AddOptionTitleToEmails < ActiveRecord::Migration
  def change
    add_column :emails, :option_title, :string
  end
end
