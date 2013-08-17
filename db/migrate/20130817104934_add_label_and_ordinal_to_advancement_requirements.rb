class AddLabelAndOrdinalToAdvancementRequirements < ActiveRecord::Migration
  def change
    add_column :advancement_requirements, :label, :string
    add_column :advancement_requirements, :ord, :integer
  end
end
