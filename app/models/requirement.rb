class Requirement < ActiveRecord::Base
  has_many :advancement_requirements, :dependent => :destroy
  has_many :advancements, through: :advancement_requirements

  has_many :scout_requirements, :dependent => :destroy
  has_many :scouts, through: :scout_requirements
end
