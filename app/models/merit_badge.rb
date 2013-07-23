class MeritBadge < ActiveRecord::Base
  default_scope order('name ASC')

  has_many :advancements
  has_many :scouts, through: :advancements
  has_many :advancement_requirements
  has_many :requirements, through: :advancement_requirements
end
