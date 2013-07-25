class AddTypeToAdvancement < ActiveRecord::Migration
  def change
    add_column :advancements, :type, :string
  end
end
