class AddUsernameToUsers < ActiveRecord::Migration
  def change #Anything inside of this is changed to SQL type database
    add_column :users, :username, :string # add a new column to the table "users" now called "userusernames"
    add_index :users, :username, unique: false #first index userusernames for quck lookup. Ensure userusernames are always unique
  end
end
