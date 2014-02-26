class AddChef1ToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :chef1, :string
  end
end
