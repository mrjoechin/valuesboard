class AddImageAttributes < ActiveRecord::Migration
  def change
    add_column :values, :image_filename, :string
    add_column :values, :image_size, :integer
    add_column :values, :image_content_type, :string
  end
end
