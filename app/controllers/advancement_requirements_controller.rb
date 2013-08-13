class AdvancementRequirementsController < ApplicationController
  def index
    ar = AdvancementRequirement.all
  end
end
