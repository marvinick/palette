class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :day
      t.string :shift

      t.timestamps
    end
  end
end
