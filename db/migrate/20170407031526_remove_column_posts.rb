class RemoveColumnPosts < ActiveRecord::Migration[5.0]
  def change
  	remove_column :posts, :longtitude, :float
  end
end
