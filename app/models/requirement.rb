class Requirement < ActiveRecord::Base
      has_many :advancement_requirements
      has_many :advancements, through: :advancement_requirements
end
