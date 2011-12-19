class AddDescriptionToLists < ActiveRecord::Migration
  def self.up
    add_column :lists, :description, :text
  end

  def self.down
    remove_column :lists, :description
  end
end
