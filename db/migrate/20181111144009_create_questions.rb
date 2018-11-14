class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :type
      t.text :name
      t.text :answer

      t.timestamps
    end
  end
end
