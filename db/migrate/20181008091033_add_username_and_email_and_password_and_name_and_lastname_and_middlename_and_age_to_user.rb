class AddUsernameAndEmailAndPasswordAndNameAndLastnameAndMiddlenameAndAgeToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :email, :string
    add_column :users, :password, :string
    add_column :users, :name, :string
    add_column :users, :lastname, :string
    add_column :users, :middlename, :string
    add_column :users, :age, :integer
  end
end
