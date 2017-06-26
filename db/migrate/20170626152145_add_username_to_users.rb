class AddUsernameToUsers < ActiveRecord::Migration
  def change # anything inside this method will be translated to SQL code
    add_column :users, :username, :string #add a new column to the table users
    add_index :users, :username, unique: true # index username for quick lookup. and username is always unique
  end
end
