class ReaddColumnsFromAdvancementRequirements < ActiveRecord::Migration
  def change
    add_column :advancement_requirements, :ordinal, :integer
    add_column :advancement_requirements, :ordinal_secondary, :string
  end
end