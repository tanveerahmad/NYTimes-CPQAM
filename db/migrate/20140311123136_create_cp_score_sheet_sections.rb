class CreateCpScoreSheetSections < ActiveRecord::Migration
  def change
    create_table :cp_score_sheet_sections do |t|
      t.integer :score_sheet_config_id
      t.string :section_name
      t.string :total_page
      t.string :color_page

      t.timestamps
    end
  end
end
