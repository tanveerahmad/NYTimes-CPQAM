class RenameCpScoreSheetConfigId < ActiveRecord::Migration
  def up
    rename_column :cp_score_sheet_sections, :score_sheet_config_id, :cp_score_sheet_config_id
  end

  def down
  end
end
