class PageType < ActiveRecord::Base
  attr_accessible :number_of_page, :page_type
  has_many :page_type_score_criteria
  has_many :score_criteria, through: :page_type_score_criteria
end
