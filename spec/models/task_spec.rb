require 'spec_helper'

describe Task do
  it { should validate_presence_of :name }
  it { should validate_presence_of :assign_to }
  context "while creating a task group a task should be created" do
    it "should create task" do
      task=Task.new(:name => "First", :assign_to =>"Me")
      task.name.should =="First"
    end
  end
end


