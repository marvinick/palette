class RemovePmFromEmployees < ActiveRecord::Migration
  def change
    remove_column :employees, :PM
  end
end
