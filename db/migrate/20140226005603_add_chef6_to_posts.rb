class AddChef6ToPosts < ActiveRecord::Migration
  def change
     add_column :posts, :chef6, :string
  end
end
