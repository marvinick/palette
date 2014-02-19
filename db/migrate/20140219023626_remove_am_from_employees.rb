class RemoveAmFromEmployees < ActiveRecord::Migration
  def change
    remove_column :employees, :AM
  end
end
