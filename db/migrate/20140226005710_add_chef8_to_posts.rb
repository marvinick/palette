class AddChef8ToPosts < ActiveRecord::Migration
  def change
     add_column :posts, :chef8, :string
  end
end
