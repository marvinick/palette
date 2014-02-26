class AddChef7ToPosts < ActiveRecord::Migration
  def change
     add_column :posts, :chef7, :string
  end
end
