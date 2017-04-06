class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true
      t.string :nickname
      t.string :content
      t.integer :followerCount
      t.integer :reportCount

      t.timestamps
    end
  end
end
