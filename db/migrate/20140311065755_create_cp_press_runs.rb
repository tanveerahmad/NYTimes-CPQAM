class CreateCpPressRuns < ActiveRecord::Migration
  def change
    create_table :cp_press_runs do |t|
      t.string :cprun_name
      t.integer :product_id

      t.timestamps
    end
  end
end
