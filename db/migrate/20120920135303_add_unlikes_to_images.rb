class AddUnlikesToImages < ActiveRecord::Migration
  def change
    add_column :images, :unlikes, :integer
  end
end
