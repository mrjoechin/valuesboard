class AddValueIdToStory < ActiveRecord::Migration
  def change
    add_column :stories, :value_id, :integer
    add_index  :stories, :value_id
  end
end
