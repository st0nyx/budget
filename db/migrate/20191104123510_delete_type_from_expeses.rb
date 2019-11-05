class DeleteTypeFromExpeses < ActiveRecord::Migration[6.0]
  def change
    remove_column :expenses, :type, :integer
  end
end
