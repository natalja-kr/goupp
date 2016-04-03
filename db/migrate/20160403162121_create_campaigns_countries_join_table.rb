class CreateCampaignsCountriesJoinTable < ActiveRecord::Migration
  def change
    create_table :campaigns_countries, id: false do |t|
      t.references :campaign, index: true, foreign_key: true
      t.references :country, index: true, foreign_key: true
    end
  end
end
