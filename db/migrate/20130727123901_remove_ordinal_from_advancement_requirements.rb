class RemoveOrdinalFromAdvancementRequirements < ActiveRecord::Migration
  def change
    remove_column :advancement_requirements, :ordinal
    add_column :advancement_requirements, :ordinal, :integer
    add_column :advancement_requirements, :ordinal_secondary, :string
  end
end
