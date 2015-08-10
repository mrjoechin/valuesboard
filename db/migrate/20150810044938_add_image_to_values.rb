class AddImageToValues < ActiveRecord::Migration
  def change
    add_column :values, :image_id, :string
  end
end
