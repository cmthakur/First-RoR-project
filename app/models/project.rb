class Project < ActiveRecord::Base
  has_many :task_groups, :dependent => :destroy
end
