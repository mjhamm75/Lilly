class RemoveParentFromAdvancementRequirements < ActiveRecord::Migration
  def change
    remove_column :advancement_requirements, :parent
  end
end
