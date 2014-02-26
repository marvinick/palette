class AddChef5ToPosts < ActiveRecord::Migration
  def change
     add_column :posts, :chef5, :string
  end
end
