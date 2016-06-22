class AddCircleIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :circle_id, :string
  end
end
