class AddNameToCampaign < ActiveRecord::Migration
  def change
    add_column :campaigns, :name, :string
    add_column :campaigns, :url, :string
  end
end
