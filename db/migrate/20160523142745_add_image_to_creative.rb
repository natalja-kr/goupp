class AddImageToCreative < ActiveRecord::Migration
  def up
    add_attachment :creatives, :image
  end

  def down
    remove_attachment :creatives, :image
  end
end
