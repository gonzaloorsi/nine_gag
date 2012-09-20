class ChangeUnlikesInImages < ActiveRecord::Migration
  def up
    change_column :images, :unlikes, :string
  end

  def down
    change_column :images, :unlikes, :integer
  end
end
