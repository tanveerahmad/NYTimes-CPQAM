class DefectCause < ActiveRecord::Base
  attr_accessible :defect_cause, :points, :score_criterium_id
  belongs_to :score_criterium
end
