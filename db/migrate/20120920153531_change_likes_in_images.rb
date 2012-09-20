class ChangeLikesInImages < ActiveRecord::Migration
  def up
    change_column :images, :likes, :string
  end

  def down
    change_column :images, :likes, :integer
  end
end
