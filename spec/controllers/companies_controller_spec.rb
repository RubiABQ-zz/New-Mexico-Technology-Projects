require 'spec_helper'

describe CompaniesController do

  context "with companies" do
    before( :each ) do
      @companies = 5.times.collect {|i|Factory(:company)}
    end

    describe "#index" do
      it "should have companies" do
        get :index
        assigns(:companies).count.should == 5
      end
    end
  end

  describe "#new" do
    it "should get new" do
      get :new
      response.should be_success
    end
  end
end
