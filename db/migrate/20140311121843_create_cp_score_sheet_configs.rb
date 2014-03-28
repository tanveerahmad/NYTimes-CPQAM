class CreateCpScoreSheetConfigs < ActiveRecord::Migration
  def change
    create_table :cp_score_sheet_configs do |t|
      t.datetime :issue_date
      t.integer :press_id
      t.integer :product_id
      t.integer :press_run_id
      t.integer :foreman_id
      t.integer :pic_id
      t.integer :total_section
      t.integer :color_page_rated
      t.integer :bw_page_rated

      t.timestamps
    end
  end
end
