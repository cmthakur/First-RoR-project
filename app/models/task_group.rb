class TaskGroup < ActiveRecord::Base
  has_many :tasks
  belongs_to :project
  validates :name, :presence => true, :uniqueness => true
end
