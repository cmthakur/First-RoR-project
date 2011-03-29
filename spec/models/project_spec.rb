require 'spec_helper'

describe Project do

 it { should validate_presence_of :name }
 it { should have_many :task_groups }

 # context "creating a new project " do
 #   it "should create project" do
 #     project=Project.new
 #     project.name.should == nil
 #   end
 # end

end