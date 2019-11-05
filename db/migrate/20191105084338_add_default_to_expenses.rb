class AddDefaultToExpenses < ActiveRecord::Migration[6.0]
  def change
    change_column :expenses, :expense_type, :integer, default: 0
  end
end
