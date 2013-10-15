class String
  def is_number?
    true if Float(self) rescue false
  end

  def is_letter?
    true if self[/[a-zA-Z]+/]   == self
  end
end