class AddImageIdToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :image_id, :integer
  end
end
