class RemoveImageFromValues < ActiveRecord::Migration
  def change
    remove_column :values, :image
  end
end
