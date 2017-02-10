class AddUsernameToUsers < ActiveRecord::Migration
  def change #Anything inside of this is changed to SQL type database
    add_column :users, :username, :string # add a new column to the table "users" now called "usernames"
    add_index :users, :username, unique: true #first index usernames for quck lookup. Ensure usernames are always unique
     
  end
end
