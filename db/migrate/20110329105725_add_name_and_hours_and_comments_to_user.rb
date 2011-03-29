class AddNameAndHoursAndCommentsToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :name, :string
    add_column :users, :hours, :integer
    add_column :users, :comments, :text
  end

  def self.down
    remove_column :users, :comments
    remove_column :users, :hours
    remove_column :users, :name
  end
end
