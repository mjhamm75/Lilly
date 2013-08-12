class AddHasOptionsAndNumberOptionsToAdvancementRequirements < ActiveRecord::Migration
  def change
    add_column :advancement_requirements, :has_options, :boolean, :default => false
    add_column :advancement_requirements, :number_options, :integer
  end
end
