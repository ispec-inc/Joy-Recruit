class CompaniesController < ApplicationController
  def index
    Company.all
  end

  def all_user_names
    all_users = []
    Company.all.each do |company|
      company.users.each do |user|
        user.name
      end
    end

    all_users
  end
end
