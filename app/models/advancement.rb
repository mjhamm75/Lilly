class Advancement < ActiveRecord::Base
  belongs_to :scout
  has_many :advancement_requirements
  has_many :requirements, through: :advancement_requirements
  # has_many :ordered_requirements, through: :advancement_requirements,
  #   :class_name => "Requirement",
  #   :source => :requirement,
  #   :conditions => [ 'order by ordinal ASC']

  scope :ranks, -> { where(:type => "Rank").order(ordinal: :asc)}
  scope :merit_badges, -> { where(:type => "MeritBadge").order(name: :asc)}
  scope :alpha, -> { order(name: :asc) }
end
