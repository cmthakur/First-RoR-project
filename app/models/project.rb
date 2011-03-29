class Project < ActiveRecord::Base
  has_many :task_groups, :dependent => :destroy

  # validates :name , :presence => true
  validates :deadline , :presence => true
  validates :client , :presence => true
  validates :description, :length => { :minimum => 10 }

end
