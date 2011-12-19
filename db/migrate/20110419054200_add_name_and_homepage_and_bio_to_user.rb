class AddNameAndHomepageAndBioToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :name, :string
    add_column :users, :homepage, :string
    add_column :users, :bio, :text
  end

  def self.down
    remove_column :users, :bio
    remove_column :users, :homepage
    remove_column :users, :name
  end
end
