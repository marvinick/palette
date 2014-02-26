class AddShift2Posts < ActiveRecord::Migration
  def change
    add_column :posts, :shift2, :string
  end
end
