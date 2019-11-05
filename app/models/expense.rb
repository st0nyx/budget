class Expense < ApplicationRecord
  enum expense_type: { daily: 0, fix: 1 }
  belongs_to :kind
  belongs_to :store

  accepts_nested_attributes_for :store
  accepts_nested_attributes_for :kind
end
