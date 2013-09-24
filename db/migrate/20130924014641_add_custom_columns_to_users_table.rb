class AddCustomColumnsToUsersTable < ActiveRecord::Migration
  def up
  	add_column :users, :username, :string
  	add_column :users, :first_name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :gender, :string
  	add_column :users, :location, :string
  	add_column :users, :about, :text
  	add_attachment :users, :avatar
  end

  def down
  	remove_column :users, :username
  	remove_column :users, :first_name
  	remove_column :users, :last_name
  	remove_column :users, :gender
  	remove_column :users, :location
  	remove_column :users, :about
  	remove_attachment :users, :avatar
  end
end
