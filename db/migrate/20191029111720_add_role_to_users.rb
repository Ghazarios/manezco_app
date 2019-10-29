class AddRoleToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :role, :string
    change_column_default :users, :role, 'student'
    dandi = User.where(email: 'dandi@test').update(role: 'admin')
    puts "#{dandi}"
  end
end
