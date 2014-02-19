class AddAmToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :AM, :string
  end
end
