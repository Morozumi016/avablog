class AddAwesomeNestedSetPostsToCircles < ActiveRecord::Migration
  def change
    add_column :circles, :parent_id, :integer
    add_column :circles, :lft, :integer
    add_column :circles, :rgt, :integer
  end
end
