class ChangeAmountToMonetize < ActiveRecord::Migration[6.0]
  def change
    add_monetize :costs, :amount
  end
end
