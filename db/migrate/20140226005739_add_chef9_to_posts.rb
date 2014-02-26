class AddChef9ToPosts < ActiveRecord::Migration
  def change
     add_column :posts, :chef9, :string
  end
end
