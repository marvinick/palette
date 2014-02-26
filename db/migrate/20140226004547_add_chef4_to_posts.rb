class AddChef4ToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :chef4, :string
  end
end
