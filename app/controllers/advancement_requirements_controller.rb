class AdvancementRequirementsController < ApplicationController
  def index
    @ar = AdvancementRequirement.all
  end

  def edit
    binding.pry
  end
end
