class CreateScoreCriteria < ActiveRecord::Migration
  def change
    create_table :score_criteria do |t|
      t.string :score_criteria

      t.timestamps
    end
  end
end
