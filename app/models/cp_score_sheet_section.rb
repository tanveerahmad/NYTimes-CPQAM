class CpScoreSheetSection < ActiveRecord::Base
  attr_accessible :total_page, :color_page, :cp_score_sheet_config_id, :section_name
  belongs_to :cp_score_sheet_config
end