class AddAvatarExternalToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :avatar_external, :string
  end

  def self.down
    remove_column :users, :avatar_external
  end
end
