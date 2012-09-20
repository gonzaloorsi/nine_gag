class AddLikesToImages < ActiveRecord::Migration
  def change
    add_column :images, :likes, :integer
  end
end
