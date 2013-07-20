class MeritBadge < ActiveRecord::Base
  default_scope order('name ASC')
  
  has_many :advancements
  has_many :scouts, through: :advancements
end
