class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.references :app, index: true, foreign_key: true
      t.references :version, index: true, foreign_key: true
      t.string :operator

      t.timestamps null: false
    end
  end
end
