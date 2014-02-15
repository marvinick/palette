class CreateLineStaffs < ActiveRecord::Migration
  def change
    create_table :line_staffs do |t|
      t.references :employee, index: true
      t.belongs_to :draft, index: true

      t.timestamps
    end
  end
end
