class AddScheduleIdColumnLineStaffs < ActiveRecord::Migration
  def change
    add_column :line_staffs, :schedule_id, :integer
  end
end
