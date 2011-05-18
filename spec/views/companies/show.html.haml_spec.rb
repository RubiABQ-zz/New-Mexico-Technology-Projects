require 'spec_helper'

describe "companies/show.html.haml" do
  it "should render a company" do
    company = Factory(:company)
    assign(:company, company)

    render

    rendered.should have_selector 'h1#company_name', :content => company.name
  end
end