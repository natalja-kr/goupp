class AddCountToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :count_demonstration, :integer
  end
end
