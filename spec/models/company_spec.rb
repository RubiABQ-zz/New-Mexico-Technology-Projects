require 'spec_helper'

describe Company do
  describe "validations" do
    it "should require a name" do
      company = Company.create
      company.errors[:name].should be_present
    end
    it "should require a city" do
      company = Company.create
      company.errors[:city].should be_present
    end

  end

  describe "associations" do
    it "should have projects" do
      project = Factory(:project)
      company = Factory(:company, :projects => [project])
      company.projects.should_not be_empty
    end

    it "should have three projects" do
      company = Factory(:company, :projects => 3.times.collect{Factory(:project)})
      company.projects.size.should == 3      
    end
  end
end
