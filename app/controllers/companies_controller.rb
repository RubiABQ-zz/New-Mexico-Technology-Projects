class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def new

  end
end
