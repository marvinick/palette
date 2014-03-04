class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :sayit
      t.timestamps
    end
  end
end
