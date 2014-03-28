class CreatePageTypeScoreCriteria < ActiveRecord::Migration
  def change
    create_table :page_type_score_criteria do |t|
      t.integer :page_type_id
      t.integer :score_criteria_id
      t.integer :score

      t.timestamps
    end
  end
end
