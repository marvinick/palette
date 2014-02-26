class AddShiftToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :shift, :string
  end
end
