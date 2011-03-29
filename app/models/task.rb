class Task < ActiveRecord::Base
  belongs_to :task_group

  validates :name, :presence => true, :uniqueness => true
  validates :assign_to, :presence => true
  validates :deadline, :presence => true

end
