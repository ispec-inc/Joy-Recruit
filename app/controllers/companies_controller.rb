class CompaniesController < ApplicationController

  before_action :set_company, only: [:article_index]

  def index
    companies = Company.all
    render json: companies
  end

  def article_index
    render json: @company.articles
  end

  private

  def set_company
    @company = Company.find(params[:id])
  end
end
