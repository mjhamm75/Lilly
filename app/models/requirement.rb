class Requirement < ActiveRecord::Base
	has_many :merit_badges
	has_many :requirements, through: :merit_badges
end
