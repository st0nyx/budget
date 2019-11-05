class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.date :date
      t.decimal :amount, precision: 10, scale: 2
      t.string :description
      t.integer :type, default: 0
      t.references :kind, null: false, foreign_key: true
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
