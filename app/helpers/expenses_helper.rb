module ExpensesHelper

  def bymonth
    Expense.order("date_trunc('day', created_at) DESC, amount_cents DESC")
  end

end
