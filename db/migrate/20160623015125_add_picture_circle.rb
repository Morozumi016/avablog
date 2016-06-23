class AddPictureCircle < ActiveRecord::Migration
  def change
     add_column :circles, :picture, :string
  end
end
