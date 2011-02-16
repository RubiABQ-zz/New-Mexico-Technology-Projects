require 'spec_helper'

describe Project do
  it "should require a name" do
    company = Project.create
    company.errors[:name].should be_present
  end
end
