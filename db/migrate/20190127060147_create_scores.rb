class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      
      t.string "quiz", :limit => 50, :null => false
      t.decimal "mark", :integer, :limit => 30, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
      
      t.timestamps
    end
  end
end
