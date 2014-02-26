class AddChef2ToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :chef2, :string
  end
end
