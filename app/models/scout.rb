class Scout < ActiveRecord::Base
  def full_name
    self.first_name + " " + self.last_name
  end
  def age
    now = Time.now.utc.to_date
    now.year - self.birthdate.year - (self.birthdate.to_date.change(:year => now.year) > now ? 1 : 0)
  end
end
