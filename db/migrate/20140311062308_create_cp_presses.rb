class CreateCpPresses < ActiveRecord::Migration
  def change
    create_table :cp_presses do |t|
      t.string :press_name
      t.text :description
      t.integer :timezone_id
      t.boolean :active

      t.timestamps
    end
  end
end
