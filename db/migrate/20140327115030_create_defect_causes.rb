class CreateDefectCauses < ActiveRecord::Migration
  def change
    create_table :defect_causes do |t|
      t.string :defect_cause
      t.decimal :points
      t.integer :score_criterium_id

      t.timestamps
    end
  end
end
