class CreateKinds < ActiveRecord::Migration[6.0]
  def change
    create_table :kinds do |t|
      t.string :name
      t.integer :periodic, default: 0

      t.timestamps
    end
  end
end
