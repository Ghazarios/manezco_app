class AddParentToSubjects < ActiveRecord::Migration[5.2]
  def change
  	add_reference :subjects, :parent, index: true
  end
end
