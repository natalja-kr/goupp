class CreateCreatives < ActiveRecord::Migration
  def change
    create_table :creatives do |t|
      t.integer :type
      t.references :campaign, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
