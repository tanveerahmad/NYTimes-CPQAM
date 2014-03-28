class RenamePageTypeScoreCriteriaId < ActiveRecord::Migration
  def up
    rename_column :page_type_score_criteria, :score_criteria_id, :score_criterium_id
  end

  def down
  end
end
