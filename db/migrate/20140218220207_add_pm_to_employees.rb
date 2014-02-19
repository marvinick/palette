class AddPmToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :PM, :string
  end
end
