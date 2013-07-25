class AddEagleRequiredToAdvancementTable < ActiveRecord::Migration
  def change
    add_column :advancements, :eagle_required, :boolean, :default => false
    add_column :advancements, :ordinal, :integer
  end
end
