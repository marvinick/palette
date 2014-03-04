class CreateMessage < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :note
      t.timestamps
    end
  end
end
