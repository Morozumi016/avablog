class AddUserIdToPost < ActiveRecord::Migration
  def self.up
    add_column :posts, :users_id, :integer
    add_index :posts, :users_id
  end

  def self.down
    remove_index :posts, :column => :users_id
    remove_column :posts, :users_id
  end
end