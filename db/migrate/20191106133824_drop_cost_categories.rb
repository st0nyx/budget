class DropCostCategories < ActiveRecord::Migration[6.0]
  def change
    drop_table :cost_categories
  end
end
