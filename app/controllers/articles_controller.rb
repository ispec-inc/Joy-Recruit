class ArticlesController < ApplicationController
  def index
    id = params[:company_id] || 1
    company = Company.find_by(id: id)
    raise StandardError.new("run `bundle exec rails db:seed_fu`") if company.nil?

    all_articles = []
    company.users.each do |user|
      all_articles << user.articles.where(is_draft: false)
    end

    all_articles.flatten!

    render json: all_articles
  end
end

