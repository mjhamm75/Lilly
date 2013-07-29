class AddOrdinalToAdvancementRequirements < ActiveRecord::Migration
  def change
    add_column :advancement_requirements, :ordinal, :string
  end
end
