class CpPressRun < ActiveRecord::Base
  attr_accessible :cprun_name, :product_id
  belongs_to :product
  has_many :cp_score_sheet_configs
end
