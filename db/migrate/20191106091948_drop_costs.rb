class DropCosts < ActiveRecord::Migration[6.0]
  def change
    drop_table :costs
  end
end
