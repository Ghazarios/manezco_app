class AddReferenceToQuestion < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :quiz, foreign_key: true
    add_column :questions, :images_path, :text
    add_column :questions, :description, :text
  end
end
