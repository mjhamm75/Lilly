class RemoveMoreColumnsFromAdvancementRequirements < ActiveRecord::Migration
  def change
    remove_column :advancement_requirements, :ordinal
    remove_column :advancement_requirements, :ordinal_secondary
  end
end
