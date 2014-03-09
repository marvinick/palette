class AddScribbleToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :scribble, :string
  end
end
