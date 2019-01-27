class RemoveIntegerFromScores < ActiveRecord::Migration[5.2]
  def change
    remove_column :scores, :integer, :decimal
  end
end
