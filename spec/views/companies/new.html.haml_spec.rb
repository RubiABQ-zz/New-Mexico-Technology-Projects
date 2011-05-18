require 'spec_helper'

describe "companies/new.html.haml" do
  it "should render the form" do
    assign(:company, Company.new)
    render

    rendered.should have_selector 'input#company_name'
    rendered.should have_selector 'input#company_city'
  end
end