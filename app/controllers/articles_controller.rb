class ArticlesController < ApplicationController
  def index
    company = Company.find(params[:company_id])
#
#     all_articles = []
#     company.users.each do |user|
#       all_articles << user.articles.where(is_draft: false)
#     end
#
#     all_articles.flatten!

    all_articles = company.articles

    render json: all_articles
  end
end

