class ChangeMarkFromScores < ActiveRecord::Migration[5.2]
  def change
    change_column :scores, :mark, :integer
  end
end
