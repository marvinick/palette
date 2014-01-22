class AddAmpmToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :ampm, :string
  end
end
