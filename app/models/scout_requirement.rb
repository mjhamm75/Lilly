class ScoutRequirement < ActiveRecord::Base
  has_many :scouts
  has_many :requirements
end
