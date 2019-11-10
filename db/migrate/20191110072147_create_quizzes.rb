class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.string :title
      t.text :overview
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
