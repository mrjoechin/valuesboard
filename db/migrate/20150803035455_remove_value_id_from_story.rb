class RemoveValueIdFromStory < ActiveRecord::Migration
  def change
    remove_index  :stories, :value_id
    remove_column :stories, :value_id
  end
end
