class AddNameToAdvancementTable < ActiveRecord::Migration
  def change
    add_column :advancements, :name, :string
  end
end
