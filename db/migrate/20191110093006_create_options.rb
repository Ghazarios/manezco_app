class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.references :question, foreign_key: true
      t.string :title
      t.boolean :corrent

      t.timestamps
    end
  end
end
