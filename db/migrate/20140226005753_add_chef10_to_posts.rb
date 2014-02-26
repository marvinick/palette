class AddChef10ToPosts < ActiveRecord::Migration
  def change
     add_column :posts, :chef10, :string
  end
end
