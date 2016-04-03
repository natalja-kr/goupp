class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.text :description
      t.references :platform, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
