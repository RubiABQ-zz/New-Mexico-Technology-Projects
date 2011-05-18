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
      assigns(:company).should be_a_kind_of(Company)
    end
  end

  describe "#create" do
    it "should create a new company" do
      attr = { 'name' => 'Super Techo', 'city' => 'Albuquerque'}
      company = mock_model(Company)
      Company.should_receive(:new).with(attr).and_return(company)
      company.should_receive(:save).and_return(true)
      post :create, :company => attr
      response.should redirect_to company_path company.to_param
    end
  end

  describe "#show" do
    before(:each) do
      @company = Factory(:company)
    end
    it "should render the company" do
      get :show, :id => @company.to_param
      assigns(:company).should == @company
      response.should be_success
    end
  end
end
