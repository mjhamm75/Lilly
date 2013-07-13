module CucumberHelpers
  def phraseToCamelCase(phrase)
    phrase.tr(" ", "_")
  end
end

World(CucumberHelpers)