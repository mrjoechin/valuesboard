class AddValueToStory < ActiveRecord::Migration
  def change
    add_reference :stories, :value, index: true, foreign_key: true
  end
end
