class AddShiftToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :shift, :string
  end
end
