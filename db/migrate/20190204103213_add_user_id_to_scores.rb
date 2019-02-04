class AddUserIdToScores < ActiveRecord::Migration[5.2]
  def change
    add_column :scores, :user_id, :integer
    add_index  :scores, :user_id    
  end
end
