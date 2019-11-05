class AddTypeToExpenses < ActiveRecord::Migration[6.0]
  def change
    add_column :expenses, :expense_type, :integer
  end
end
