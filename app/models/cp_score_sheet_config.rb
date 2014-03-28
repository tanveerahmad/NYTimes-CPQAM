class CpScoreSheetConfig < ActiveRecord::Base
  attr_accessible :bw_page_rated, :color_page_rated, :foreman_id, :issue_date, :pic_id, :press_id, :press_run_id, :product_id, :total_section
  has_many :cp_score_sheet_sections, :dependent => :destroy
  belongs_to :product
  belongs_to :cp_press
  belongs_to :cp_press_run
  belongs_to :cp_foreman
  belongs_to :cppic
 attr_accessible :cp_score_sheet_sections_attributes
  accepts_nested_attributes_for :cp_score_sheet_sections
end
