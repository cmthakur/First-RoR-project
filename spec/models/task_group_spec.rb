require 'spec_helper'

describe TaskGroup do
  before(:all) do
    @task_group = TaskGroup.make!
  end
  it { should have_many :tasks }
  it { should belong_to :project }
  it { should validate_presence_of :name }
  end
end

