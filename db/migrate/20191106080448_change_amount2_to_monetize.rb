class ChangeAmount2ToMonetize < ActiveRecord::Migration[6.0]
  def change
    add_monetize :expenses, :amount
  end
end
