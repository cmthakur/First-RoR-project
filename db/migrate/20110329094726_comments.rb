class Comments < ActiveRecord::Migration
  def self.up
        add_column :members, :comments, :text
        add_column :members, :hours, :integer, :default => 3
        add_column :members, :name, :string
        add_column :members, :user_id, :integer
  end

  def self.down
  end
end
