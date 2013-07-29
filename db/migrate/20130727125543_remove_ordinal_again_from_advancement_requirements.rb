class RemoveOrdinalAgainFromAdvancementRequirements < ActiveRecord::Migration
  def change
    remove_column :advancement_requirements, :ordinal
  end
end
