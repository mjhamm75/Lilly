class Advancement < ActiveRecord::Base
  has_many :scout_advancements, :dependent => :destroy
  has_many :scouts, through: :scout_advancements

  has_many :advancement_requirements, :dependent => :destroy
  has_many :requirements, through: :advancement_requirements

  # scope :ranks, -> { where(:type => "Rank").order(ordinal: :asc)}
  scope :ranks, -> { where(:type => "Rank")}
  scope :merit_badges, -> { where(:type => "MeritBadge").order(name: :asc)}
  scope :alpha, -> { order(name: :asc) }
end
