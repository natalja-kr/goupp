class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.references :campaign, index: true, foreign_key: true
      t.references :creative, index: true, foreign_key: true
      t.integer :act

      t.timestamps null: false
    end
  end
end
