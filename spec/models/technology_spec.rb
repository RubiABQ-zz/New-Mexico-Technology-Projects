require 'spec_helper'

describe Technology do
  describe "validations" do
    it "should require a name" do
      company = Technology.create
      company.errors[:name].should be_present
    end
  end

  describe "associations" do
    before :each do
      @technology = Factory(:technology)
      @project = Factory(:project)
      @project.technologies << @technology
    end

    it "should have project" do
      @technology.projects.first.should == @project
    end

    it "should have companies" do
      @technology.companies.include?(@project.company).should be_true
    end
  end
end
