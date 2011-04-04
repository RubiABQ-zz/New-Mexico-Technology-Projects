require 'spec_helper'

describe Technology do
  describe "validations" do
    it "should require a name" do
      company = Technology.create
      company.errors[:name].should be_present
    end
  end

  describe "associations" do
    it "should have project" do
      technology = Factory(:technology)
      project = Factory(:project)
      project.technologies << technology
      technology.projects.first.should == project
    end
  end
end
