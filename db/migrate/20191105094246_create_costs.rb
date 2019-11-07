class CreateCosts < ActiveRecord::Migration[6.0]
  def change
    create_table :costs do |t|
      t.string :name
      t.decimal :amount, precision: 10, scale: 2
      t.integer :frequency, default: 0
      t.references :cost_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
