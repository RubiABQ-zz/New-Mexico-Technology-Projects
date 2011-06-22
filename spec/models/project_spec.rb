require 'spec_helper'

describe Project do
  describe "validations" do
    it "should require a name" do
      company = Project.create
      company.errors[:name].should be_present
    end
  end

  describe "associations" do
    it "should have technologies" do
      project = Factory(:project)
      project.technologies << Factory(:technology)
      project.technologies.should_not be_nil
    end

    it "should have a company" do
      project = Factory(:project)
      company = Factory(:company, :projects => [project])
      project.company.should_not be_nil
      project.company.should == company
    end

  end
end
