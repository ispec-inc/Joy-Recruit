class ArticlesController < ApplicationController
  def index
    company = Company.find(params[:id])

    all_articles = []
    company.users.each do |user|
      all_articles << user.articles
    end

    all_articles.flatten!

    render json: all_articles
  end
end

