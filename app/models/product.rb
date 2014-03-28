class Product < ActiveRecord::Base
  attr_accessible :description, :product_name
  has_many :cp_press_runs
  has_many :cp_score_sheet_configs
end
