class Cppic < ActiveRecord::Base
  attr_accessible :cell, :email, :first_name, :last_name, :phone
  has_many :cp_score_sheet_configs

  def full_name
    "#{first_name} #{last_name}"
  end
end
