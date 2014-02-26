class AddChef3ToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :chef3, :string
  end
end
