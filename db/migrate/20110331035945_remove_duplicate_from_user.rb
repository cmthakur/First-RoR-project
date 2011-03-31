class RemoveDuplicateFromUser < ActiveRecord::Migration
  def self.up
    remove_column :users, :comments
    remove_column :users, :hours
  end

  def self.down
  end
end
