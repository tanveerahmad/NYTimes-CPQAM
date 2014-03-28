class CpPress < ActiveRecord::Base
  attr_accessible :active, :description, :press_name, :timezone_id
  has_many :cp_score_sheet_configs
end
