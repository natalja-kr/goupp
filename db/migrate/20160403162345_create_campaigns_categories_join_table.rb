class CreateCampaignsCategoriesJoinTable < ActiveRecord::Migration
  def change
    create_table :campaigns_categories, id: false do |t|
      t.references :campaign, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
    end
  end
end
