class CompaniesController < ApplicationController
  def index
    Company.all
  end

  def all_users
    all_users = []
    Company.all.each do |company|
      all_users << company.users.name
    end

    all_users
  end
end
