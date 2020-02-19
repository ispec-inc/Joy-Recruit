class CompaniesController < ApplicationController
  def index
    Company.all
  end
end
