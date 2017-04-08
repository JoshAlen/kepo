class AddCountdownToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :countDown, :time
  end
end
