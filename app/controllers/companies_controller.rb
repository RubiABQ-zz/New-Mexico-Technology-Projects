class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.create(params[:company])
    redirect_to @company
  end

  def show
    @company = Company.find(params[:id])
  end
end
