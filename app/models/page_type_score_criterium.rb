class PageTypeScoreCriterium < ActiveRecord::Base
  attr_accessible :page_type_id, :score, :score_criterium_id
  belongs_to :page_type
  belongs_to :score_criterium
end
