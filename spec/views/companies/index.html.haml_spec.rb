require 'spec_helper'

describe "companies/index.html.haml" do
  context "with companies" do
    before(:each) do
      assign(:companies, 3.times.collect {|i| Factory(:company, :id => i, :name => "Company #{i}") })
    end
    
    it "should show a row for all 3 companies" do
      render
      
      3.times.each do |i|
        rendered.should have_selector 'tr', :id => "company_#{i}"  do |row|
                   row.should have_selector 'td.name', :content => "Company #{i}"
                 end
      end
    end
    
    it "should render a list of possible actions" do
      render

      rendered.should have_selector 'ul.actions' do |list|
        list.should have_selector 'li.new-company', :content => 'Add a company'
      end
    end
  end
end