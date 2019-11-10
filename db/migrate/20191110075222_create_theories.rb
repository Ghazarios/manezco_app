class CreateTheories < ActiveRecord::Migration[5.2]
  def change
    create_table :theories do |t|
      t.references :quiz, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
