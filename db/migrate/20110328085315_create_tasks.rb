class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.integer :task_group_id
      t.string :name
      t.string :assign_to
      t.datetime :deadline

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
