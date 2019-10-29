class AddUsernameAndModifyEmail < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_index  :users, :username, unique: true
    change_column :users, :email, :string, :null => true
  end
end
