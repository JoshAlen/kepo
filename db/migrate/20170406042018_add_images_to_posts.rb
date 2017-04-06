class AddImagesToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :images, :json, default: []
  end
end
