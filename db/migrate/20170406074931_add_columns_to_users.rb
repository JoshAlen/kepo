class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :latitude, :float
    add_column :users, :longtitude, :float
  end
end
