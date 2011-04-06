require 'spec_helper'

describe CompaniesController do

  describe "#new" do
    it "should get new" do
      get :new
      response.should be_success
    end
  end
end
