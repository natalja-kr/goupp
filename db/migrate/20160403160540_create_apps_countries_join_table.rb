class CreateAppsCountriesJoinTable < ActiveRecord::Migration
  def change
    create_table :apps_categories, id: false do |t|
      t.references :app, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
    end
  end
end
