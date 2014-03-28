class ScoreCriterium < ActiveRecord::Base
  attr_accessible :score_criteria
  has_many :page_type_score_criteria
  has_many :page_type, through: :page_type_score_criteria

  has_many :defect_causes
end
