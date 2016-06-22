class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.date :today
      t.string :image
      t.integer :users_id
      t.integer :circles_id

      t.timestamps null: false
    end
  end
end
