class AddDescriptionToCreative < ActiveRecord::Migration
  def change
    add_column :creatives, :description, :text
  end
end
