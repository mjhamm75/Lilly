class RemoveHasMultipleFromAdvancementRequirements < ActiveRecord::Migration
  def change
    remove_column :advancement_requirements, :has_multiple
  end
end
