class Expense < ApplicationRecord
  enum expense_type: { daily: 0, fix: 1 }
  belongs_to :kind
  belongs_to :store

  accepts_nested_attributes_for :store
  accepts_nested_attributes_for :kind


  # monetize :amount_cents

  def schedulerunner
    Expense.create!(date: '2019-11-07', amount: "6,95", description: "Internet", kind_id:1, store_id:2)
    # expense.save
  end


end