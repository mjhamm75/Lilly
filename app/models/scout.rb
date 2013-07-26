class Scout < ActiveRecord::Base
  validates :first_name, :presence => true
  validates :last_name, :presence => true

  has_many :advancements
  has_many :scout_requirements

  def full_name
    self.first_name + " " + self.last_name
  end
  def age
    now = Time.now.utc.to_date
    now.year - self.birthdate.year - (self.birthdate.to_date.change(:year => now.year) > now ? 1 : 0)
  end

  def as_json(options = { })
      # just in case someone says as_json(nil) and bypasses
      # our default...
      super((options || { }).merge({
          :methods => [:full_name, :age]
      }))
  end
end
