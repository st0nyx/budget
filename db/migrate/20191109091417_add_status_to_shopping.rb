class AddStatusToShopping < ActiveRecord::Migration[6.0]
  def change
    add_column :shoppings, :urgent, :integer, default: 0
  end
end
